#!/usr/bin/python

import argparse
import re
import sys
import pexpect

pcStr = r"(0x[0-9a-fA-F]{16})"
instStr = r"\((0x[0-9a-fA-F]{8})\)"

gem5Pattern = re.compile(r"^\s*\d+:\s*global:\s*" + pcStr + r" " + instStr + r":\s*(.*)$")
instRegPattern = re.compile(r"x(\d+) \((0x[0-9a-fA-F]+)\)")

spikePattern = re.compile(r"^core\s+\d+:\s*" + pcStr + r" " + instStr + r"\s*(.*)$")
spikeTrapPattern = re.compile(r"^core\s+\d+:\s*exception trap_\w+, epc " + pcStr + r"$")

regValStr = "(0x[0-9a-fA-F]{16})"
regList = ["zero", "ra", "sp", "gp", "tp", "t0", "t1", "t2",
           "s0", "s1", "a0", "a1", "a2", "a3", "a4", "a5",
           "a6", "a7", "s2", "s3", "s4", "s5", "s6", "s7",
           "s8", "s9", "s10", "s11", "t3", "t4", "t5", "t6"]
regStr = ""
for i in xrange(len(regList)):
    if i > 0 and i % 4 == 0:
        regStr += "\r\n"
    regStr += regList[i] + r"\s*: " + regValStr + "  "
regPattern = re.compile(regStr)

def find_gem5_instr(f, lineno=0):
    match = None
    while match == None:
        lineno += 1
        line = f.readline()
        if line == '':
            return None
        else:
            match = gem5Pattern.match(line.rstrip())
    return (lineno, int(match.group(1), 0), match.group(2), match.group(3))

def find_spike_instr(f, lineno=0):
    match = None
    while match == None:
        lineno += 1
        line = f.readline()
        if line == '':
            return None
        else:
           line = line.rstrip()
           match = spikePattern.match(line)
           if match != None:
               return (lineno, int(match.group(1), 0), match.group(2), match.group(3))
           else:
               match = spikeTrapPattern.match(line)
               if match != None:
                   targetPC = int(match.group(1), 0)
                   while True:
                       lineno += 1
                       line = f.readline().rstrip()
                       match = spikePattern.match(line)
                       if match != None:
                           pc = int(match.group(1), 0)
                           if pc == targetPC or pc == targetPC + 4:
                               return (lineno, pc, match.group(2), match.group(3))

def advance_spike(pc):
    return "until pc 0 " + hex(pc)

def gem5_find_regs(inst):
    regs = {}
    for match in instRegPattern.finditer(inst):
        ind = int(match.group(1))
        val = match.group(2)
#        if re.match("[9a-fA-F]", val[2]):
#            val = "0xFFFFFFFF" + val[2:]
        regs[ind] = int(val, 0)
    return regs

def spike_find_reg_value(s, ind):
    match = regPattern.match(s)
    if match != None:
        return int(match.group(ind + 1), 0)
    else:
        return -1

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("gem5_trace", type=argparse.FileType('r'),
            help="File containing the RISC-V instruction trace generated from GEM5 using the 'RiscvPRA' debug flag.")
    spikeGroup = parser.add_mutually_exclusive_group(required=True)
    spikeGroup.add_argument("-t", "--spike-trace", type=argparse.FileType('r'),
            help="File containing the RISC-V instruction trace generated from spike using the -l flag.")
    spikeGroup.add_argument("-e", "--spike-exe",
            help="Executable to run spike in debug mode.")
    parser.add_argument("-v", "--verbose", action="count",
            help="Increase output verbosity")
    args = parser.parse_args()

    if args.spike_trace:
        inst = find_gem5_instr(args.gem5_trace)
        if inst == None:
            print("gem5: Reached end of trace.")
            sys.exit(1)
        (gem5Line, gem5PC, gem5InstBits, gem5Inst) = inst
        if args.verbose > 0:
            print("gem5: Starting trace at line " + str(gem5Line))

        (spikeLine, spikePC, spikeInstBits, spikeInst) = (0, -1, "", "")
        while spikePC != gem5PC:
            inst = find_spike_instr(args.spike_trace, spikeLine)
            if inst == None:
                print("spike: Reached end of trace.")
                break;
            (spikeLine, spikePC, spikeInstBits, spikeInst) = inst
        if args.verbose > 0:
            print("spike: Starting trace at line " + str(spikeLine))

        while gem5PC == spikePC:
            gem5PrevPC = gem5PC
            spikePrevPC = spikePC

            while gem5PC == gem5PrevPC:
                inst = find_gem5_instr(args.gem5_trace, gem5Line)
                if inst == None:
                    print("gem5: Reached end of trace.")
                    sys.exit(0)
                (gem5Line, gem5PC, gem5InstBits, gem5Inst) = inst
                if gem5PC == gem5PrevPC:
                    print("gem5: Found repeated instruction at line " + str(gem5Line))

            while spikePC == spikePrevPC:
                inst = find_spike_instr(args.spike_trace, spikeLine)
                if inst == None:
                    print("spike: Reached end of trace.")
                    sys.exit(0)
                (spikeLine, spikePC, spikeInstBits, spikeInst) = inst

            if args.verbose > 0:
                print("0x%016x (%s): %s)" % (spikePC, spikeInstBits, spikeInst))

            if gem5PC != spikePC:
                print("Diverging execution between gem5 and spike:")
                print("gem5  (%8d): 0x%016x (%s): %s" % (gem5Line, gem5PC, gem5InstBits, gem5Inst))
                print("spike (%8d): 0x%016x (%s): %s" %(spikeLine, spikePC, spikeInstBits, spikeInst))
    else:
        prompt = "\r\n: "
        quit = "q"
        reg = "reg 0"
        

        spike = pexpect.spawn("spike -d pk " + args.spike_exe)
        spike.setecho(False)
        try:
            gem5Line = 0
            while True:
                inst = find_gem5_instr(args.gem5_trace, gem5Line)
                if inst != None:
                    (gem5Line, gem5PC, gem5InstBits, gem5Inst) = inst
                    if args.verbose > 0:
                        print("gem5 (%d): Advanced to pc 0x%016x (%s)" % (gem5Line, gem5PC, gem5Inst))

                    spike.expect(prompt)
                    spike.sendline(advance_spike(gem5PC))
                    if args.verbose > 0:
                        spike.expect(prompt)
                        spike.sendline("pc 0")
                        spike.expect(pcStr)
                        print("spike: Advanced to pc " + spike.after)
                    spike.expect(prompt)
                    spike.sendline(reg)
                    spike.expect(regPattern)

                    gem5RegLine = args.gem5_trace.readline()
                    gem5Line += 1
                    while re.match(r"(?:x\d{1,2} \(0x[0-9a-fA-F]{16}\) ){32}", gem5RegLine) == None:
                        gem5RegLine = args.gem5_trace.readline()
                        gem5Line += 1
                    gem5Regs = gem5_find_regs(gem5RegLine)
                    if args.verbose > 1:
                        print("spike registers:")
                        print(spike.after)
                        print("gem5 registers:")
                        for i in xrange(len(gem5Regs)):
                            if i % 4 == 0 and i != 0:
                                sys.stdout.write("\n")
                            sys.stdout.write("%- 4s: 0x%016x  " % (regList[i], gem5Regs[i]))
                        sys.stdout.write("\n\n")
                    for r, val in gem5Regs.iteritems():
                        spikeVal = spike_find_reg_value(spike.after, r)
                        if spikeVal != val:
                            print("gem5 (%d): Unexpected value in register %s: 0x%016x (expected 0x%016x)" % (gem5Line, regList[r], val, spikeVal))
                            if args.verbose == 1:
                                print("")
                                print("spike registers:")
                                print(spike.after)
                                print("")
                                print("gem5 registers:")
                                for i in xrange(len(gem5Regs)):
                                    if i % 4 == 0 and i != 0:
                                        sys.stdout.write("\n")
                                    sys.stdout.write("%- 4s: 0x%016x  " % (regList[i], gem5Regs[i]))
                                sys.stdout.write("\n")
                            spike.expect(prompt)
                            spike.sendline(quit)
                            sys.exit(1)
                else:
                    spike.expect(prompt)
                    spike.sendline(quit)
        except pexpect.EOF:
            print("spike: Unexpected EOF")
            sys.exit(1)
