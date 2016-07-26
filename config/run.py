import argparse
import sys
import os
import math
import m5
import shlex

cpu_types = {"atomic": m5.objects.AtomicSimpleCPU,
             "timing": m5.objects.TimingSimpleCPU,
             "minor": m5.objects.MinorCPU,
             "detailed": m5.objects.DerivO3CPU}
mem_types = {"GDDR5_4000_x64": m5.objects.GDDR5_4000_x64,
	     "HMC_2500_x32": m5.objects.HMC_2500_x32,
             "DRAMCtrl": m5.objects.DRAMCtrl,
	     "HBM_1000_4H_x128": m5.objects.HBM_1000_4H_x128,
	     "LPDDR2_S4_1066_x32": m5.objects.LPDDR2_S4_1066_x32,
	     "LPDDR3_1600_x32": m5.objects.LPDDR3_1600_x32,
	     "DDR3_1600_x64": m5.objects.DDR3_1600_x64,
	     "RubyMemoryControl": m5.objects.RubyMemoryControl,
             "DDR3_2133_x64": m5.objects.DDR3_2133_x64,
	     "HBM_1000_4H_x64": m5.objects.HBM_1000_4H_x64,
	     "SimpleMemory": m5.objects.HBM_1000_4H_x64,
	     "DDR4_2400_x64": m5.objects.DDR4_2400_x64,
	     "WideIO_200_x128": m5.objects.WideIO_200_x128}

parser = argparse.ArgumentParser()
parser.add_argument("command", nargs='*',
        help="command line to execute")
parser.add_argument("--cpu-type", choices=sorted(cpu_types.keys()), default="atomic",
        help="CPU model to simulate")
workload_group = parser.add_mutually_exclusive_group()
workload_group.add_argument("-n", "--num-cpus", type=int, default=1,
        help="number of cores in the cpu")
workload_group.add_argument("-t", "--num-threads", type=int, default=1,
        help="number of threads to run on one cpu")
parser.add_argument("-m", "--mem-size", default="512MB",
        help="physical memory size")
parser.add_argument("--mem-type", nargs='?', choices=sorted(mem_types.keys()), default="DDR3_1600_x64",
        metavar="MEM_TYPE", help="type of memory to use (pass no argument to list available memory types)")
parser.add_argument("--fastmem", action="store_true",
        help="use fast memory model")
parser.add_argument("--cacheline-size", type=int, default=64,
        help="size of cache line in bytes")
parser.add_argument("-f", "--cpu-frequency", default="2GHz",
        help="CPU clock rate")
parser.add_argument("--sys-frequency", default="1GHz",
        help="system clock rate")
parser.add_argument("--sys-voltage", default="1.0V",
        help="system voltage")
parser.add_argument("-d", "--dump-period", type=float, default=None,
        help="stat dump period in milliseconds")
parser.add_argument("--stop-at-tick", type=int, default=2**64 - 1,
        metavar="TICK", help="stop simulation after some number of ticks, including those from a restored checkpoint")
parser.add_argument("--caches", action="store_true",
        help="simulate L1 caches")
parser.add_argument("--icache", nargs=2, default=["32kB", "2"],
        metavar=("SIZE","ASSOC"), help="instruction cache parameters")
parser.add_argument("--itlb-entries", type=int, default=64,
        help="number of entries in the instruction TLB")
parser.add_argument("--dcache", nargs=2, default=["64kB", "2"],
        metavar=("SIZE","ASSOC"), help="data cache parameters")
parser.add_argument("--dtlb-entries", type=int, default=64,
        help="number of entries in the data TLB")
parser.add_argument("--icache-extra", nargs=4, type=int, default=[2, 2, 4, 20],
        metavar=("HIT_LATENCY","RESPONSE_LATENCY","MSHRS","TGTS_PER_MSHR"), help="extra parameters for icache")
parser.add_argument("--dcache-extra", nargs=4, type=int, default=[2, 2, 4, 20],
        metavar=("HIT_LATENCY","RESPONSE_LATENCY","MSHRS","TGTS_PER_MSHR"), help="extra parameters for dcache")
parser.add_argument("--l2cache", nargs=2, default=None,
        metavar=("SIZE","ASSOC"), help="simulate L2 cache with the given parameters")
parser.add_argument("--l2-extra", nargs=5, type=int, default=[20, 20, 20, 12, 8],
        metavar=("HIT_LATENCY","RESPONSE_LATENCY","MSHRS","TGTS_PER_MSHR","WRITE_BUFFERS"), help="extra parameters for L2 cache")
parser.add_argument("--fetch-policy", choices=["singlethread", "roundrobin", "branch", "iqcount", "lsqcount"], default="roundrobin", type=str.lower,
        help="SMT thread-fetching policy")
parser.add_argument("-F", "--fast-forward", type=int, default=None,
        metavar="INSTRUCTIONS", help="fast-forward using a simple CPU model until a thread has executed enough instructions, and then switch to a more complex one")
parser.add_argument("--inorder", action="store_true",
        help="configure a detailed CPU to execute instructions in order")
parser.add_argument("--max-instructions", type=int, default=None,
        help="simulate some instructions and then exit.  When used with fast-forward, only instructions simulated by the second CPU model will count")
parser.add_argument("--fast-cpu", choices=sorted(cpu_types.keys()), default="atomic",
        help="CPU type to use for fast-forward mode")
parser.add_argument("--simpoint-interval", type=int, default=None,
        metavar="INSTRUCTIONS", help="set instruction interval for simpoint analysis, and enable basic block vector generation if --run-simpoint is not present")
parser.add_argument("--run-simpoint", nargs=3,
        metavar=("SIMPOINTS_FILE", "WEIGHTS_FILE", "CLUSTER_ID"), help="simulate a simpoint with the given cluster ID from the given simpoints and weights files, then exit")
parser.add_argument("--config-from-file", nargs='?', default='',
        help="get CPU configuration from file (use no argument to see compatible parameters)")
args = parser.parse_args()

if not args.mem_type:
    print("Available memory types:\n\t" + "\n\t".join(sorted(mem_types.keys())))
    sys.exit(0)

if args.config_from_file == None:
    print("Config file parameters:")
    print("\tNTILES=<N> or NCORES<N>")
    print("\tN_MEM_CHANNELS=<N>")
    print("\tNBANKS_PER_MEM_CHANNEL=<N>")
    print("\tFETCH_WIDTH=<N>")
    print("\tRETIRE_WIDTH=<N>")
    print("\tCACHE_BLOCK_BYTES=<N>")
    print("\tL1D_MSHRS=<N>")
    print("\tL1D_WAYS=<N>")
    print("\tL1D_SETS=<N>")
    print("\tDTLB_ENTRIES=<N>")
    print("\tL1I_WAYS=<N>")
    print("\tL1I_SETS=<N>")
    print("\tITLB_ENTRIES=<N>")
    print("\tL2_CAPACITY_IN_KB=<N>")
    print("\tL2_WAYS=<N>")
    print("\tINORDER=<true/false>")
    sys.exit(0)

if not args.command:
    print("No workload specified!")
    sys.exit(1)

fw = 8
rw = 8
if args.config_from_file:
    with open(args.config_from_file, 'r') as config:
        for line in config:
            if line.strip() and line.strip()[0] != '#':
                (key, value) = (s.strip() for s in line.split('=', 1))
                if key == "NTILES" or key == "NCORES":
                    if args.num_threads > 1:
                        print("SMT is not compatible with multicore")
                        sys.exit(1)
                    args.num_cpus = int(value)
                elif key == "N_MEM_CHANNELS":
                    args.mem_channels = int(value)
                elif key == "NBANKS_PER_MEM_CHANNEL":
                    args.mem_ranks = int(value)
                elif key == "FETCH_WIDTH":
                    fw = int(value)
                elif key == "RETIRE_WIDTH":
                    rw = int(value)
                elif key == "CACHE_BLOCK_BYTES":
                    args.cacheline_size = int(value)
                elif key == "L1D_MSHRS":
                    args.caches = True
                    args.dcache_extra[2] = int(value)
                elif key == "L1D_WAYS":
                    args.cache = True
                    args.dcache[1] = value
                elif key == "L1D_SETS":
                    args.caches = True
                    args.dcache[0] = value
                elif key == "DTLB_ENTRIES":
                    args.dtlb_entries = int(value)
                elif key == "L1I_WAYS":
                    args.caches = True
                    args.icache[1] = value
                elif key == "L1I_SETS":
                    args.caches = True
                    args.icache[0] = value
                elif key == "ITLB_ENTRIES":
                    args.itlb_entries = int(value)
                elif key == "L2_CAPACITY_IN_KB":
                    if args.l2cache:
                        args.l2cache[0] = value + "kB"
                    else:
                        args.l2cache = [value + "kB", "1"]
                elif key == "L2_WAYS":
                    if args.l2cache:
                        args.l2cache[1] = value
                    else:
                        args.l2cache = ["2048kB", value]
                elif key == "INORDER":
                    args.inorder = value == "true"
        args.dcache[0] = str(args.cacheline_size*int(args.dcache[0])*int(args.dcache[1])) + "B"
        args.icache[0] = str(args.cacheline_size*int(args.icache[0])*int(args.icache[1])) + "B"

if cpu_types[args.cpu_type] == cpu_types["detailed"] and not args.caches:
    print("Detailed CPU model requires caches. Using default data and instruction cache parameters.")
    args.caches = True
if args.inorder and not cpu_types[args.cpu_type] == cpu_types["detailed"]:
    print(args.cpu_type + " CPU is already inorder.")

if args.run_simpoint:
    if not args.simpoint_interval:
        print("No simpoint interval specified!")
        sys.exit(1)
    else:
        with open(args.run_simpoint[0], 'r') as simpoints_file, open(args.run_simpoint[1], 'r') as weights_file:
            simpoints = {}
            for line in simpoints_file:
                s = [int(n) for n in line.strip().split()]
                simpoints[s[1]] = s[0]
            weights = {}
            for line in weights_file:
                w = line.strip().split()
                weights[int(w[1])] = float(w[0])
            if set(simpoints) != set(weights):
                print("warning: inconsistent cluster ID's for simpoints and weights.")

            simpoint = simpoints[int(args.run_simpoint[2])]
            simpoint_insts = simpoint*args.simpoint_interval
            args.fast_forward = simpoint_insts
            args.max_instructions = args.simpoint_interval

process = []
if '~' in args.command and not os.environ.get("HOME"):
    print("warning: $HOME not set")
for cmd in args.command:
    line = shlex.split(cmd)
    for i in xrange(len(line)):
        if line[i][0] == '~':
            if len(line[i]) > 1 and line[i][1] == '/':
                line[i] = os.getenv("HOME", '~') + line[i][1:]
            elif len(word) == 1:
                line[i] = os.getenv("HOME", '~')
    exe = line[0]
    arg = []
    stdin = None
    stdout = None
    stderr = None
    for i in xrange(1, len(line)):
        if line[i - 1] == '<':
            arg.pop()
            stdin = line[i]
        elif line[i - 1] == '>' or line[i - 1] == "1>":
            arg.pop()
            stdout = line[i]
        elif line[i - 1] == ">>" or line[i - 1] == "1>>":
            print("warning: stdout redirect in append mode is not supported. Using truncate mode instead ('>')")
            arg.pop()
            stdout = line[i]
        elif line[i - 1] == "2>":
            arg.pop()
            stderr = line[i]
        elif line[i - 1] == "2>>":
            print("warning: stderr redirect in append mode is not supported. Using truncate mode instead ('2>')")
            arg.pop()
            stderr = line[i]
        elif line[i - 1] == "&>":
            arg.pop()
            stderr = stdout = line[i]
        elif line[i - 1] == "&>>":
            print("warning: stdout redirect in append mode is not supported. Using truncate mode instead ('&>')")
            arg.pop()
            stderr = stdout = line[i]
        else:
            arg.append(line[i])
    process.append(m5.objects.LiveProcess(executable=exe, cwd=os.getcwd(), cmd=[exe] + arg))
    if stdin:
        process[-1].input = stdin
    if stdout:
        process[-1].output = stdout
    if stderr:
        process[-1].errout = stderr

cpu_types["detailed"].fetchWidth = fw
cpu_types["detailed"].decodeWidth = fw
cpu_types["detailed"].wbWidth = rw
cpu_types["detailed"].commitWidth = rw
if args.inorder:
    cpu_types["detailed"].renameWidth = 1
    cpu_types["detailed"].dispatchWidth = 1
    cpu_types["detailed"].issueWidth = 1
    cpu_types["detailed"].squashWidth = 1
    cpu_types["detailed"].numRobs = 1
    cpu_types["detailed"].numROBEntries = 1
if args.num_threads > 1:
    cpu_types["detailed"].numPhysIntRegs *= args.num_threads
    cpu_types["detailed"].numPhysFloatRegs *= args.num_threads
    cpu_types["detailed"].numPhysCCRegs *= args.num_threads
    cpu_types["detailed"].numROBEntries *= args.num_threads
    cpu_types["detailed"].smtFetchPolicy = args.fetch_policy

cpu_type = cpu_types[args.fast_cpu if args.fast_forward else args.cpu_type]
if cpu_type != m5.objects.AtomicSimpleCPU:
    if args.fastmem:
        print("warning: fastmem is only compatible with the atomic CPU model.  Disabling fastmem.")
        args.fastmem = False
    if not args.fastmem and (args.simpoint_interval and not args.run_simpoint):
        print("warning: simpoint profiling should only be done with the atomic CPU model.  Disabling simpoint profiling.")
        args.simpoint_interval = None
cpu_type.numThreads = args.num_threads
cpu_type.itb.size = args.itlb_entries
cpu_type.dtb.size = args.dtlb_entries
system = m5.objects.System(cpu=[cpu_type(cpu_id=i) for i in xrange(args.num_cpus)],
                           mem_mode=cpu_type.memory_mode(),
                           mem_ranges=[m5.objects.AddrRange(args.mem_size)])
if args.num_threads > 1:
    system.multi_thread = True

system.voltage_domain = m5.objects.VoltageDomain(voltage=args.sys_voltage)
system.clk_domain = m5.objects.SrcClockDomain(clock=args.sys_frequency, voltage_domain=system.voltage_domain)
system.cpu_voltage_domain = m5.objects.VoltageDomain()
system.cpu_clk_domain = m5.objects.SrcClockDomain(clock=args.cpu_frequency, voltage_domain=system.cpu_voltage_domain)

if args.num_cpus > 1:
    for i in xrange(len(system.cpu)):
        system.cpu[i].clk_domain = system.cpu_clk_domain
        system.cpu[i].workload = process[i % len(process)]
        system.cpu[i].createThreads()
elif args.num_threads > 1:
    system.cpu[0].clk_domain = system.cpu_clk_domain
    system.cpu[0].workload = process[0]
    if len(process) > 1:
        system.cpu[0].workload = process
    else:
        system.cpu[0].workload = process*args.num_threads;
    system.cpu[0].createThreads()
else:
    system.cpu[0].clk_domain = system.cpu_clk_domain
    system.cpu[0].workload = process[0]
    system.cpu[0].createThreads()

system.membus = m5.objects.SystemXBar()
system.system_port = system.membus.slave
system.cache_line_size = args.cacheline_size
if args.l2cache:
    system.l2 = m5.objects.Cache(clk_domain=system.cpu_clk_domain, size=args.l2cache[0], assoc=int(args.l2cache[1]),
            hit_latency=args.l2_extra[0], response_latency=args.l2_extra[1], mshrs=args.l2_extra[2], tgts_per_mshr=args.l2_extra[3], write_buffers=args.l2_extra[4])
    system.tol2bus = m5.objects.L2XBar(clk_domain=system.cpu_clk_domain)
    system.l2.cpu_side = system.tol2bus.master
    system.l2.mem_side = system.membus.slave
for cpu in system.cpu:
    if args.fastmem:
        cpu.fastmem = True
    if args.simpoint_interval:
        cpu.addSimPointProbe(args.simpoint_interval)
    if args.max_instructions and not args.fast_forward:
        cpu.max_insts_all_threads = args.max_instructions

    if args.caches:
        icache = m5.objects.Cache(size=args.icache[0], assoc=int(args.icache[1]),
                hit_latency=args.icache_extra[0], response_latency=args.icache_extra[1], mshrs=args.icache_extra[2], tgts_per_mshr=args.icache_extra[3],
                is_read_only=True, writeback_clean=True)
        dcache = m5.objects.Cache(size=args.dcache[0], assoc=int(args.dcache[1]),
                hit_latency=args.dcache_extra[0], response_latency=args.dcache_extra[1], mshrs=args.dcache_extra[2], tgts_per_mshr=args.dcache_extra[3])
        cpu.addPrivateSplitL1Caches(icache, dcache)
    cpu.createInterruptController()
    if args.l2cache:
        cpu.connectAllPorts(system.tol2bus, system.membus)
    else:
        cpu.connectAllPorts(system.membus)
mem_ctrls = []
for r in system.mem_ranges:
    intlv_low_bit = math.log(max(128, system.cache_line_size.value), 2)
    mem_ctrls.append(mem_types[args.mem_type]())
    if issubclass(mem_types[args.mem_type], m5.objects.DRAMCtrl):
        mem_ctrls[-1].channels = 1
        if mem_ctrls[-1].addr_mapping.value == "RoRaBaChCo":
            intlv_low_bit = int(math.log(mem_ctrls[-1].device_rowbuffer_size.value*mem_ctrls[-1].devices_per_rank.value, 2))
    mem_ctrls[-1].range = m5.objects.AddrRange(r.start, size=r.size(), intlvHighBit=intlv_low_bit - 1, xorHighBit=19, intlvBits=0, intlvMatch=1)
system.mem_ctrls = mem_ctrls
for ctrl in system.mem_ctrls:
    ctrl.port = system.membus.master

if args.dump_period:
    m5.internal.stats.periodicStatDump(int(args.dump_period*1e9))
root = m5.objects.Root(full_system=False, system=system)

if args.fast_forward:
    cpu_types[args.cpu_type].numThreads = args.num_threads
    system.switch_cpus = [cpu_types[args.cpu_type](switched_out=True, cpu_id=i) for i in xrange(args.num_cpus)]
    for i in xrange(args.num_cpus):
        system.cpu[i].max_insts_any_thread = args.fast_forward
        system.switch_cpus[i].system = system
        system.switch_cpus[i].workload = system.cpu[i].workload
        system.switch_cpus[i].clk_domain = system.cpu[i].clk_domain
        system.switch_cpus[i].progress_interval = system.cpu[i].progress_interval
        system.switch_cpus[i].createThreads()
        if args.max_instructions:
            system.switch_cpus[i].max_insts_all_threads = args.max_instructions

m5.instantiate(None)
if args.fast_forward:
    exit_event = m5.simulate(args.stop_at_tick)
    m5.switchCpus(system, [(system.cpu[i], system.switch_cpus[i]) for i in xrange(args.num_cpus)])
exit_event = m5.simulate(args.stop_at_tick - m5.curTick())
print("Exiting at tick %i because %s" % (m5.curTick(), exit_event.getCause()))
