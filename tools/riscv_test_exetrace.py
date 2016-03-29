#!/usr/bin/python3

import argparse
import re
import sys
import ctypes

prefix = r"\s*\d+:\s*global:"
pc = r"(0x[0-9a-fA-F]{16})"
bits = r"\((0x[0-9a-fA-F]{8})\)"
name = r"([\w.]+)"
int_reg_name = r"(\w{2}|\w\d{1,2}|zero)"
float_reg_name = r"f(\d+)"
int_reg_value = r"\((0x[0-9a-fA-F]{16})\)"
float_reg_value = r"\((.*)\)"
immediate = r"((?:0x)?[0-9a-fA-F]+)"

inst_pattern = re.compile("^" + prefix + r"\s*" + pc + r"\s*" + bits + r":\s*" + name + r"\s*(.*)$")
sop_pattern = re.compile("^" + int_reg_name + r"\s*" + int_reg_value + r",\s*" + int_reg_name + r"\s*" + int_reg_value + r",\s*" + immediate + "$")
iop_pattern = re.compile("^" + int_reg_name + r",\s*" + int_reg_name + r"\s*" + int_reg_value + r",\s*" + immediate + "$")
uop_pattern = re.compile("^" + int_reg_name + r",\s*" + immediate + "$")
rop_pattern = re.compile("^" + int_reg_name + r",\s*" + int_reg_name + r"\s*" + int_reg_value + r",\s*" + int_reg_name + r"\s*" + int_reg_value + "$")
fpsop_pattern = re.compile("^" + int_reg_name + r"\s*" + int_reg_value + r",\s*" + float_reg_name + r"\s*" + float_reg_value + r",\s*" + immediate + "$")

int_regs = {"zero": 0, "ra": 0, "sp": 0, "gp": 0,
        "tp": 0, "t0": 0, "t1": 0, "t2": 0,
        "s0": 0, "s1": 0, "a0": 0, "a1": 0,
        "a2": 0, "a3": 0, "a4": 0, "a5": 0,
        "a6": 0, "a7": 0, "s2": 0, "s3": 0,
        "s4": 0, "s5": 0, "s6": 0, "s7": 0,
        "s8": 0, "s9": 0, "s10": 0, "s11": 0,
        "t3": 0, "t4": 0, "t5": 0, "t6": 0}
float_regs = [0.0]*32

stack_base = 0
mem = {}

def float_to_bits(f, prec):
    return struct.unpack("=l", struct.pack("=" + prec, f))[0]

def check_result_count(expected, found):
    if expected != found:
        raise ValueError("Expected %d results lines, found %d lines" % (expected, found))
def check_inst_args(args, pattern):
    match = pattern.match(args)
    if match == None:
        raise ValueError("Argument string " + args + " does not match pattern")
    return match
def check_int_regs(regs):
    for reg in regs:
        if int_regs[reg[0]] != reg[1]:
            raise RuntimeError("Incorrect value 0x%016x in int register %s (expected 0x%016x)" % (reg[1], reg[0], int_regs[reg[0]]))
def check_float_regs(regs):
    for reg in regs:
        if float_regs[reg[0]] != reg[1]:
            raise RuntimeError("Incorrect value %f in float register f%d (expected %f)" % (reg[1], reg[0], float_regs[reg[0]]))
def check_mem(addr, value):
    try:
        if mem[addr] != value:
            raise RuntimeError("Incorrect value 0x%016x in memory at address 0x%016x (expected 0x%016x)" % (mem[addr], addr, value))
    except KeyError:
        if addr <= stack_base:
            raise RuntimeError("Could not find data at address 0x%016x in memory" % (addr))
        else:
            pass # Perhaps print a message saying the desired address is in the initial contents of the stack

def int_store(args, results, width=1):
    check_result_count(1, len(results))
    match = check_inst_args(args, sop_pattern)

    rs1 = match.group(1)
    rs1_value = int(match.group(2), 0)
    rs2 = match.group(3)
    rs2_value = int(match.group(4), 0)
    imm = int(match.group(5), 0)
    check_int_regs([(rs1, rs1_value), (rs2, rs2_value)])

    addr = rs1_value + imm
    match = re.match(r"^\s*\d+:\s*global:\s*Wrote (0x[0-9a-fA-F]{16}) to address (0x[0-9a-fA-F]{16})\.$", results[0])
    if match == None:
        raise ValueError("Incorrect result report for store: " + results[0])
    for i in range(width):
        mask = 0xFF << (i*8)
        mem[addr + i] = (rs2_value&mask) >> (i*8)

def int_result_store(result_str, rd, rd_result):
    match = re.match(r"^\s*\d+:\s*global:\s*(\w{2}|\w\d{1,2}|zero):\s*(0x[0-9a-fA-F]{16})$", result_str)
    if match == None:
        raise ValueError("Incorrect result report for arithmetic operation: " + results[0])
    if rd != match.group(1):
        raise RuntimeError("Unexpected destination register " + match.group(1) + " (expected " + rd + ")")
    if rd_result != int(match.group(2), 0):
        raise RuntimeError("Unexpected result 0x%x (expected 0x%x)" % (int(match.group(2), 0), rd_result))
    int_regs[rd] = rd_result


def float_store(args, results, prec='d'):
    check_result_count(1, len(results))
    match = check_inst_args(args, fpsop_pattern)
    if prec != 'd' or prec != 'f':
        raise ValueError("Unknown floating point precision " + prec)
    width = 4 if prec == 'f' else 8

    rs = match.group(1)
    rs_value = int(match.group(2), 0)
    fs = int(match.group(3))
    fs_value = float(match.group(4))
    imm = int(match.group(5), 0)
    check_int_regs([(rs, rs_value)])
    check_float_regs([(fs, fs_value)])

    addr = rs_value + imm
    fs_bits = float_to_bits(fs_value, prec)
    match = re.match(r"^\s*\d+:\s*global:\s*Wrote (0x[0-9a-fA-F]{16}) to address (0x[0-9a-fA-F]{16})\.$", results[0])
    if match == None:
        raise ValueError("Incorrect result report for store: " + results[0])
    for i in range(width):
        mask = 0xFF << (i*8)
        mem[addr + i] = (fs_bits&mask) >> (i*8)

def arithmetic_immediate(args, results, op):
    check_result_count(1, len(results))
    match = check_inst_args(args, iop_pattern)

    rd = match.group(1)
    rs = match.group(2)
    rs_value = int(match.group(3), 0)
    imm = int(match.group(4), 0)
    check_int_regs([(rs, rs_value)])

    rd_result = ctypes.c_ulonglong(op(rs_value, imm)).value
    int_result_store(results[0], rd, rd_result)

def arithmetic_register(args, result, op):
    check_result_count(1, len(results))
    match = check_inst_args(args, rop_pattern)

    rd = match.group(1)
    rs1 = match.group(2)
    rs1_value = int(match.group(3), 0)
    rs2 = match.group(4)
    rs2_value = int(match.group(4), 0)
    check_int_regs([(rs1, rs1_value), (rs2, rs2_value)])

    rd_result = ctypes.c_ulonglong(op(rs1_value, rs2_value)).value
    int_result_store(results[0], rop_pattern)

def sb(pc, args, results):
    int_store(args, results, 1)
def sh(pc, args, results):
    int_store(args, results, 2)
def sw(pc, args, results):
    int_store(args, results, 4)
def sd(pc, args, results):
    int_store(args, results, 8)

def fsw(pc, args, results):
    float_store(args, results, 'f')
def fsd(pc, args, results):
    float_store(args, results, 'd')

def addi(pc, args, results):
    arithmetic_immediate(args, results, lambda a, b: ctypes.c_longlong(a).value + ctypes.c_longlong(b).value)
def slli(pc, args, results):
    arithmetic_immediate(args, results, lambda a, b: a << b)
def slti(pc, args, results):
    arithmetic_immediate(args, results, lambda a, b: 1 if ctypes.c_longlong(a) < ctypes.c_longlong(b) else 0)
def sltiu(pc, args, results):
    arithmetic_immediate(args, results, lambda a, b: 1 if a < b else 0)
def xori(pc, args, results):
    arithmetic_immediate(args, results, lambda a, b: a^b)
def srli(pc, args, results):
    arithmetic_immediate(args, results, lambda a, b: a >> b)
def srai(pc, args, results):
    arithmetic_immediate(args, results, lambda a, b: ctypes.c_longlong(a).value >> b)
def ori(pc, args, results):
    arithmetic_immedate(args, results, lambda a, b: a | b)
def andi(pc, args, results):
    arithmetic_immediate(args, results, lambda a, b: a&b)
def addiw(pc, args, results):
    arithmetic_immediate(args, results, lambda a, b: ctypes.c_int(a).value + ctypes.c_int(b).value)
def slliw(pc, args, results):
    arithmetic_immediate(args, results, lambda a, b: ctypes.c_int(a).value << b)
def srliw(pc, args, results):
    arithmetic_immediate(args, results, lambda a, b: ctype.c_uint(a).value >> b)
def sraiw(pc, args, results):
    arithmetic_immediate(args, results, lambda a, b: ctypes.c_int(a).value >> b)

def auipc(pc, args, results):
    check_result_count(1, len(results))
    match = check_inst_args(args, uop_pattern)

    rd = match.group(1)
    imm = ctypes.c_longlong(int(match.group(2), 0)).value

    rd_result = pc + imm
    int_result_store(results[0], rd, rd_result)

def lui(pc, args, results):
    check_result_count(1, len(results))
    match = check_inst_args(args, uop_pattern)

    rd = match.group(1)
    imm = int(match.group(2), 0)

    rd_result = imm
    int_result_store(results[0], rd, rd_result)

def add(pc, args, results):
    arithmetic_register(args, results, lambda a, b: ctypes.c_longlong(a).value + ctypes.c_longlong(b).value)
def mul(pc, args, results):
    arithmetic_register(args, results, lambda a, b: ctypes.c_longlong(a).value*ctypes.c_longlong(b).value)
def sub(pc, args, results):
    arithmetic_register(args, results, lambda a, b: ctypes.c_longlong(a).value - ctypes.c_longlong(b).value)
def sll(pc, args, results):
    arithmetic_register(args, results, lambda a, b: a << b)
def mulh(pc, args, results):
    arithmetic_register(args, results, lambda a, b: ctypes.c_longlong(a).value*ctypes.c_longlong(b).value >> 64)
def slt(pc, args, results):
    arithmetic_register(args, results, lambda a, b: 1 if ctypes.c_longlong(a) < ctypes.c_longlong(b) else 0)
def mulhsu(pc, args, results):
    arithmetic_register(args, results, lambda a, b: ctypes.c_longlong(a).value*b >> 64)
def sltu(pc, args, results):
    arithmetic_register(args, results, lambda a, b: a < b)
def mulhu(pc, args, results):
    arithmetic_register(args, results, lambda a, b: a*b >> 64)
def xor(pc, args, results):
    arithmetic_register(args, results, lambda a, b: a^b)
def div(pc, args, results):
    arithmetic_register(args, results, lambda a, b: ctypes.c_longlong(a).value//ctypes.c_longlong(b).value)
def srl(pc, args, results):
    arithmetic_register(args, results, lambda a, b: a >> b)
def sra(pc, args, results):
    arithmetic_register(args, results, lambda a, b: ctypes.c_longlong(a).value >> b)
def divu(pc, args, results):
    arithmetic_register(args, results, lambda a, b: a//b)
def or_inst(pc, args, results):
    arithmetic_register(args, results, lambda a, b: a | b)
def rem(pc, args, results):
    arithmetic_register(args, results, lambda a, b: ctypes.c_longlong(a).value % ctypes.c_longlong(b).value)
def and_inst(pc, args, results):
    arithmetic_register(args, results, lambda a, b: a&b)
def remu(pc, args, results):
    arithmetic_register(args, results, lambda a, b: a%b)
def addw(pc, args, results):
    arithmetic_register(args, results, lambda a, b: ctypes.c_int(a).value + ctypes.c_int(b).value)
def mulw(pc, args, rssults):
    arithmetic_register(args, results, lambda a, b: ctypes.c_int(a).value*ctypes.c_int(b).value)
def subw(pc, args, results):
    arithmetic_register(args, results, lambda a, b: ctypes.c_int(a).value - ctypes.c_int(b).value)
def sllw(pc, args, results):
    arithmetic_register(args, results, lambda a, b: ctypes.c_int(a).value << b)
def divw(pc, args, results):
    arithmetic_register(args, results, lambda a, b: ctypes.c_int(a).value//ctypes.c_int(b).value)
def srlw(pc, args, results):
    arithmetic_register(args, results, lambda a, b: ctypes.c_uint(a).value >> b)
def sraw(pc, args, results):
    arithmetic_register(args, results, lambda a, b: ctypes.c_int(a).value >> b)
def divuw(pc, args, results):
    arithmetic_register(args, results, lambda a, b: ctypes.c_uint(a).value/ctypes.c_uint(b).value)
def remw(pc, args, results):
    arithmetic_register(args, results, lambda a, b: ctypes.c_int(a).value%ctypes.c_int(b))
def remuw(pc, args, results):
    arithmetic_register(args, results, lambda a, b: ctypes.c_uint(a).value%ctypes.c_uint(b).value)
if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("trace", type=argparse.FileType('r'),
            help="")
    parser.add_argument("-s", "--stack-base", type=lambda x: int(x, 0), default="0x7FFFFFFF",
            help="")
    args = parser.parse_args()

    instructions = {"sb": (sb, 1), "sh": (sh, 1), "sw": (sw, 1), "sd": (sd, 1),
            "fsw": (fsw, 1), "fsd": (fsd, 1),
            "addi": (addi, 1), "slli": (slli, 1), "slti": (slti, 1), "sltiu": (sltiu, 1), "xori": (xori, 1), "srli": (srli, 1), "srai": (srai, 1), "ori": (ori, 1), "andi": (andi, 1),
            "addiw": (addiw, 1), "slliw": (slliw, 1), "srliw": (srliw, 1), "sraiw": (sraiw, 1),
            "auipc": (auipc, 1),
            "lui": (lui, 1),
            "add": (add, 1), "mul": (mul, 1), "sub": (sub, 1), "sll": (sll, 1), "mulh": (mulh, 1), "slt": (slt, 1), "mulhsu": (mulhsu, 1), "sltu": (sltu, 1), "mulhu": (mulhu, 1), "xor": (xor, 1), "div": (div, 1), "srl": (srl, 1), "sra": (sra, 1), "divu": (divu, 1), "or": (or_inst, 1), "rem": (rem, 1), "and": (and_inst, 1), "remu": (remu, 1),
            "addw": (addw, 1), "mulw": (mulw, 1), "subw": (subw, 1), "sllw": (sllw, 1), "divw": (divw, 1), "srlw": (srlw, 1), "sraw": (sraw, 1), "divuw": (divuw, 1), "remw": (remw, 1), "remuw": (remuw, 1)}
    int_regs["sp"] = stack_base = args.stack_base

    line = args.trace.readline().strip()
    while line != '':
        match = inst_pattern.match(line)
        if match != None:
            pc = int(match.group(1), 0)
            inst = match.group(3)
            inst_args = match.group(4)
            instructions[inst][0](pc, inst_args, [args.trace.readline().strip()]*instructions[inst][1])

        line = args.trace.readline().strip()
