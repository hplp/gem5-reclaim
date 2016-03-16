#!/usr/bin/python3

import argparse
import re
import sys

pcStr = r"(0x[0-9a-fA-F]{16})"
instStr = r"\((0x[0-9a-fA-F]{8})\)"
gem5Pattern = re.compile(r"^\s*\d+:\s*global:\s*" + pcStr + r" " + instStr + r":\s*(.*)$")
spikePattern = re.compile(r"^core\s+\d+:\s*" + pcStr + r" " + instStr + r"\s*(.*)$")
spikeTrapPattern = re.compile(r"^core\s+\d+:\s*exception trap_\w+, epc " + pcStr + r"$")

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

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("gem5_trace", type=argparse.FileType('r'),
            help="File containing the RISC-V instruction trace generated from GEM5 using the 'RiscvPRA' debug flag.")
    parser.add_argument("spike_trace", type=argparse.FileType('r'),
            help="File containing the RISC-V instruction trace generated from spike using the -l flag.")
    parser.add_argument("-v", "--verbose", action="store_true",
            help="")
    args = parser.parse_args()

    inst = find_gem5_instr(args.gem5_trace)
    if inst == None:
        print("gem5: Reached end of trace.")
        sys.exit(1)
    (gem5Line, gem5PC, gem5InstBits, gem5Inst) = inst
    if args.verbose:
        print("gem5: Starting trace at line " + str(gem5Line))

    (spikeLine, spikePC, spikeInstBits, spikeInst) = (0, -1, "", "")
    while spikePC != gem5PC:
        inst = find_spike_instr(args.spike_trace, spikeLine)
        if inst == None:
            print("spike: Reached end of trace.")
            break;
        (spikeLine, spikePC, spikeInstBits, spikeInst) = inst
    if args.verbose:
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

        if args.verbose:
            print("0x%016x (%s): %s)" % (spikePC, spikeInstBits, spikeInst))

        if gem5PC != spikePC:
            print("Diverging execution between gem5 and spike:")
            print("gem5  (%8d): 0x%016x (%s): %s" % (gem5Line, gem5PC, gem5InstBits, gem5Inst))
            print("spike (%8d): 0x%016x (%s): %s" %(spikeLine, spikePC, spikeInstBits, spikeInst))
