#!/usr/bin/python

import argparse
import re
import sys
import pexpect

pcStr = r"(0x[0-9a-fA-F]{16})"
instStr = r"\((0x[0-9a-fA-F]{8})\)"

gem5Pattern = re.compile(r"^\s*\d+:\s*global:\s*" + pcStr + r" " + instStr + r":\s*(.*)$")
intRegPattern = re.compile(r"x(\d+) \((0x[0-9a-fA-F]+)\)")
floatRegPattern = re.compile(r"f(\d+) \((-?\d+(?:\.\d+)?)\)")

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

def gem5_find_int_regs(inst):
    regs = {}
    for match in intRegPattern.finditer(inst):
        regs[int(match.group(1))] = int(match.group(2), 0)
    return regs

def gem5_find_float_regs(inst):
    regs = {}
    for match in floatRegPattern.finditer(inst):
        regs[int(match.group(1))] = float(match.group(2))
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
        prompt = ": "
        quit = "q"
        
#        spike = pexpect.spawn("/bin/bash -c \"spike -d pk " + args.spike_exe + " 1> /dev/null\"")
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
                    spike.sendline("reg 0")
                    spike.expect(regPattern)

                    gem5RegLine = args.gem5_trace.readline()
                    gem5Line += 1
                    while re.match(r"(?:x\d{1,2} \(0x[0-9a-fA-F]{16}\) ){32}", gem5RegLine) == None:
                        gem5RegLine = args.gem5_trace.readline()
                        gem5Line += 1
                    gem5IntRegs = gem5_find_int_regs(gem5RegLine)
                    spikeIntRegs = spike.after
                    while re.match(r"(?:f\d{1,2} \(-?\d+(?:\.\d+)?\) ){32}", gem5RegLine) == None:
                        gem5RegLine = args.gem5_trace.readline()
                        gem5Line += 1
                    gem5FloatRegs = gem5_find_float_regs(gem5RegLine)
                    spikeFloatRegs = {}
                    for f in xrange(32):
                        spike.expect(prompt)
                        spike.sendline("fregd 0 " + str(f))
                        spike.expect("-?\d+(?:\.\d+)?")
                        spikeFloatRegs[f] = float(spike.after)

                    if args.verbose > 1:
                        print("spike integer registers:")
                        print(spike.after)
                        print("gem5 integer registers:")
                        for i in xrange(len(gem5IntRegs)):
                            if i % 4 == 0 and i != 0:
                                sys.stdout.write("\n")
                            sys.stdout.write("%- 4s: 0x%016x  " % (regList[i], gem5IntRegs[i]))
                        sys.stdout.write("\n")
                        print("spike float registers:")
                        for f in xrange(32):
                            if f % 4 == 0 and f != 0:
                                sys.stdout.write("\n")
                            sys.stdout.write("%- 4s: % 8.7f  " % ("f" + str(f), spikeFloatRegs[f]))
                        sys.stdout.write("\n")
                        print("gem5 float registers:")
                        for f in xrange(len(gem5FloatRegs)):
                            if f % 4 == 0 and f != 0:
                                sys.stdout.write("\n")
                            sys.stdout.write("%- 4s: % 8.7f  " %("f" + str(f), gem5FloatRegs[f]))
                        sys.stdout.write("\n\n")
                    for r, val in gem5IntRegs.iteritems():
                        spikeVal = spike_find_reg_value(spikeIntRegs, r)
                        if spikeVal != val:
                            print("gem5 (%d): Unexpected value in register %s: 0x%016x (expected 0x%016x)" % (gem5Line, regList[r], val, spikeVal))
                            if args.verbose == 1:
                                print("")
                                print("spike integer registers:")
                                print(spike.after)
                                print("")
                                print("gem5 integer registers:")
                                for i in xrange(len(gem5IntRegs)):
                                    if i % 4 == 0 and i != 0:
                                        sys.stdout.write("\n")
                                    sys.stdout.write("%- 4s: 0x%016x  " % (regList[i], gem5IntRegs[i]))
                                sys.stdout.write("\n")
                            spike.expect(prompt)
                            spike.sendline(quit)
                            sys.exit(1)
                    for f, val in gem5FloatRegs.iteritems():
                        if spikeFloatRegs[f] != val:
                            print("gem5 (%d): Unexpected value in register f%d: % 8.7f (expected % 8.7f)" % (gem5Line, f, val, spikeFloatRegs[f]))
                            if args.verbose == 1:
                                print("")
                                print("spike integer registers:")
                                for i in xrange(32):
                                    if i % 4 == 0 and i != 0:
                                        sys.stdout.write("\n")
                                    sys.stdout.write("% -4s: % 8.7f  " % ("f" + str(i), spikeFloatRegs[f]))
                                sys.stdout.write("\n")
                                for i in xrange(len(gem5FloatRegs)):
                                    if i % 4 != 0 and i != 0:
                                        sys.stdout.write("\n")
                                    sys.stdout.write("% -4s: % 8.7f  " % ("f" + str(i), gem5FloatRegs[i]))
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
