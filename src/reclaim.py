import os

import simmanager as sim
import subprocess as sproc
import time
import atexit

if __name__ == '__main__':
    print('Creating simulation manager...')
    sman = sim.SimManager()
    self_pid = os.getpid()

    atexit.register(sman.StopAllTools, blocking=True)

    # Clear Gem5 stats folder
#    folder = 'm5out'
#    if not os.path.exists(folder):
#        os.makedirs(folder)
#    for the_file in os.listdir(folder):
#        file_path = os.path.join(folder, the_file)
#        try:
#            if os.path.isfile(file_path):
#                open(file_path, 'w').close()
#        except Exception as e:
#            print(e)

    gem5_args = '../lib/gem5-riscv/build/X86/gem5.opt ' + \
        '../lib/gem5-riscv/configs/example/se.py ' + \
        '--cpu-type=detailed -n 2 ' + \
        '--sys-voltage=1V ' + \
        '--sys-clock=3.7GHz --cpu-clock=3.7GHz ' + \
        '--caches ' + \
        '--l1d_size=32kB --l1d_assoc=8 ' + \
        '--l1i_size=32kB --l1i_assoc=8 ' + \
        '--l2cache --num-l2caches=1 --l2_size=8MB --l2_assoc=16 ' + \
        '-c ../lib/gem5-riscv/tests/test-progs/hello/bin/x86/linux/hello;' + \
           '../lib/gem5-riscv/tests/test-progs/hello/bin/x86/linux/hello'
    print(gem5_args)
    gem5 = sman.StartTool(
        'gem5',
        gem5_args,
        stdout=open('gem5.log', 'w'),
        stderr=open('gem5.err', 'w'))

    time.sleep(3)

    #print('Starting ReCLAIM...')
    # reclaim = sman.StartTool(   # Run simulation of reclaim microcontroller (tee substitutes for now)
    #    'reclaim',
    #    'tee reclaim.input',
    #    stdin=sproc.PIPE,
    #    stdout=sproc.DEVNULL,
    #    stderr=sproc.DEVNULL)
    #
    # time.sleep(2)

    gridvol_gz = sman.StartTool(   # Write gridvol to file
        'gridvol_gz',
        'gzip -acfq --best',
        stdin=sproc.PIPE,
        stdout=open('voltspot.gridvol.gz', 'w'),
        stderr=open('voltspot.gridvol.err', 'w'))
    gridvol = sman.StartTool(   # Write gridvol to file
        'gridvol',
        'tee /dev/stderr',
        stdin=sproc.PIPE,
        stdout=sproc.PIPE,
#        stdout=sproc.DEVNULL,
        stderr=gridvol_gz.stdin)
        #stderr=open('voltspot.gridvol', 'w'))
    voltspot_args = '../lib/voltspot/bin/voltspot ' + \
        '-f ../config/penryn.flp ' + \
        '-p /dev/stdin ' + \
        '-c ../config/voltspot.config ' + \
        '-v /dev/stdout ' + \
        '-gridvol_file /dev/stderr ' + \
        '-PDN_ptrace_start 1 ' + \
        '-PDN_ptrace_stop 999999999'
    print(voltspot_args)
    voltspot = sman.StartTool(  # Run voltspot
        'voltspot',
        voltspot_args,
        stdin=sproc.PIPE,
        stdout=open('voltspot.log', 'w'),
        stderr=gridvol.stdin)
#        stderr=sproc.DEVNULL)

    gridtemp_gz = sman.StartTool(   # Write gridvol to file
        'gridtemp_gz',
        'gzip -acfq --best',
        stdin=sproc.PIPE,
        stdout=open('hotspot.gridtemp.gz', 'w'),
        stderr=open('hotspot.gridtemp.err', 'w'))
    gridtemp = sman.StartTool(   # Write gridvol to file
        'gridtemp',
        'tee /dev/stderr',
        stdin=sproc.PIPE,
        stdout=sproc.PIPE,
#        stdout=sproc.DEVNULL,
        stderr=gridtemp_gz.stdin)
#        stderr=open('hotspot.gridtemp', 'w'))
    hotspot_args = '../lib/hotspot/hotspot ' + \
        '-f ../config/penryn.flp ' + \
        '-p /dev/stdin ' + \
        '-c ../config/hotspot.config ' + \
        '-o hotspot.ttrace ' + \
        '-grid_trans_file /dev/stderr'
    print(hotspot_args)
    hotspot = sman.StartTool(  # Run hotspot
        'hotspot',
        hotspot_args,
        stdin=sproc.PIPE,
        stdout=open('hotspot.log', 'w'),
        stderr=gridtemp.stdin)
#        stderr=sproc.DEVNULL)

    gridvol_fd = gridvol.stdout.fileno()
    gridtemp_fd = gridtemp.stdout.fileno()
    heatvideo_args = 'python3 ../src/heatvideo.py ' + \
        '-f ../config/penryn.flp ' + \
        '-t /proc/%d/fd/%d ' % (self_pid, gridtemp_fd) + \
        '-v /proc/%d/fd/%d ' % (self_pid, gridvol_fd) + \
        '-o chip.mp4'
    print(heatvideo_args)
    heatvideo = sman.StartTool(
        'heatvideo',
        heatvideo_args,
        stdin=sproc.DEVNULL,
        stdout=open('heatvideo.log', 'w'),
        stderr=open('heatvideo.err', 'w'))

    ptrace_split = sman.StartTool(  # Send ptrace to hotspot and voltspot
        'ptrace_split',
        'tee /dev/stderr',
        stdin=sproc.PIPE,
        stdout=voltspot.stdin,
        stderr=hotspot.stdin)
    ptrace_save = sman.StartTool(
        'ptrace_save',
        'tee /dev/stderr',
        stdin=sproc.PIPE,
        stdout=ptrace_split.stdin,
        stderr=open('ptrace.txt', 'w'))
    mcpat_hotspot_args = 'python2.7 ../lib/mcpat-riscv/McPATToHotSpot.py ' + \
    '-o /dev/stdout ' + \
    '/dev/stdin'
    print(mcpat_hotspot_args)
    mcpat_hotspot = sman.StartTool(
        'mcpat-hotspot',
        mcpat_hotspot_args,
        stdin=sproc.PIPE,
        stdout=ptrace_save.stdin,
        stderr=open('mcpat-hotspot.err', 'w'))

    mcpat_out_gz = sman.StartTool(
        'mcpat_out_gz',
        'gzip -acfq --best',
        stdin=sproc.PIPE,
        stdout=open('mcpat_out.gz', 'w'),
        stderr=open('mcpat_out_gz.err', 'w'))
    mcpat_out = sman.StartTool(
        'mcpat_out',
        'tee /dev/stderr',
        stdin=sproc.PIPE,
        stdout=mcpat_hotspot.stdin,
        stderr=mcpat_out_gz.stdin)
        #stderr=open('mcpat_out.txt', 'w'))
    mcpat_args = '../../lib/mcpat-riscv/mcpat ' + \
    '-infile _sim.xml ' + \
    '-print_level 5 ' + \
    '-is_tdp 0 ' + \
    '-sim 1 ' + \
    '-out_switch 0'
    print(mcpat_args)
    mcpat = sman.StartTool(
        'mcpat',
        mcpat_args,
        cwd='./m5out',
        stdout=mcpat_out.stdin,
        stderr=open('mcpat.err', 'w'))

    gem5_mcpat_args = 'python2.7 ../../lib/mcpat-riscv/GEM5ToMcPAT.py ' + \
        '--quiet ' + \
        '--sim ' + \
        '--out sim.xml ' + \
        '/dev/stdin ' + \
        './config.json ' + \
        '../../config/Penryn.xml'
    print(gem5_mcpat_args)
    gem5_mcpat = sman.StartTool(
        'gem5-mcpat',
        gem5_mcpat_args,
        cwd='./m5out',
        stdin=sproc.PIPE,
        stdout=open('gem5-mcpat.log', 'w'),
        stderr=open('gem5-mcpat.err', 'w'))
    gem5_mcpat_feed = sman.StartTool(
        'gem5-mcpat-feed',
        'tail -f ./m5out/stats.txt',
        stdout=gem5_mcpat.stdin)

    print('Waiting for output...')
    heatvideo.communicate()[0]
#    voltspot.communicate()[0]
#    hotspot.communicate()[0]
