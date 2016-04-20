import os

import simmanager as sim
import subprocess as sproc
import time

if __name__ == '__main__':
    print('Creating simulation manager...')
    sman = sim.SimManager()
    self_pid = os.getpid()

    time.sleep(2)

    #print('Starting ReCLAIM...')
    # reclaim = sman.StartTool(   # Run simulation of reclaim microcontroller (tee substitutes for now)
    #    'reclaim',
    #    'tee reclaim.input',
    #    stdin=sproc.PIPE,
    #    stdout=sproc.DEVNULL,
    #    stderr=sproc.DEVNULL)
    #
    # time.sleep(2)

    print('Starting VoltSpot...')
    gridvol = sman.StartTool(   # Write gridvol to file
        'gridvol',
        'tee voltspot.gridvol',
        stdin=sproc.PIPE,
        stdout=sproc.PIPE,
        stderr=sproc.DEVNULL)
    voltspot = sman.StartTool(  # Run voltspot
        'voltspot',
        'voltspot \
        -f ../config/penryn.flp \
        -p /dev/stdin \
        -c ../config/voltspot.config \
        -v /dev/stdout \
        -gridvol_file /dev/stderr \
        -PDN_ptrace_start 1 \
        -PDN_ptrace_stop 999999999',
        stdin=sproc.PIPE,
        stdout=open('voltspot.log', 'w'),
        stderr=gridvol.stdin)

    time.sleep(2)

    print('Starting hotspot')
    gridtemp = sman.StartTool(   # Write gridvol to file
        'gridtemp',
        'tee hotspot.gridtemp',
        stdin=sproc.PIPE,
        stdout=sproc.PIPE,
        stderr=sproc.DEVNULL)
    hotspot_args = 'hotspot ' + \
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

    time.sleep(2)

    print('Starting heatvideo...')
    gridvol_fd = gridvol.stdout.fileno()
    gridtemp_fd = gridtemp.stdout.fileno()
    heatvideo_args = 'python2.7 ../src/heatvideo.py ' + \
        '-f ../config/penryn.flp ' + \
        '-t /proc/%d/fd/%d ' % (self_pid, gridtemp_fd) + \
        '-v /proc/%d/fd/%d ' % (self_pid, gridvol_fd) + \
        '-o chip.mp4'
    print(heatvideo_args)
    heatvideo = sman.StartTool(   # Run simulation of reclaim microcontroller (tee substitutes for now)
        'heatvideo',
        heatvideo_args,
        stdin=sproc.DEVNULL,
        stdout=open('heatvideo.log', 'w'),
        stderr=open('heatvideo.err', 'w'))

    time.sleep(2)

    print('Starting McPAT -> hotspot.ptrace')
    ptrace_split = sman.StartTool(  # Send ptrace to hotspot and voltspot
        'ptrace_split',
        'tee /dev/stderr',
        stdin=sproc.PIPE,
        stdout=voltspot.stdin,
        stderr=hotspot.stdin)
    ptrace = sman.StartTool(    # Write ptrace to file
        'ptrace',
        'tee hotspot.ptrace',
        stdin=sproc.PIPE,
        stdout=ptrace_split.stdin,
        stderr=sproc.DEVNULL)
    feed = sman.StartTool(  # Convert McPAT output to HotSpot format
        'feed', 'cat ./mcpat.ptrace', stdout=ptrace.stdin)

    time.sleep(2)

    print('Starting McPAT...')
    #mcpat = sman.StartTool('mcpat', '')

    time.sleep(2)

    print('Waiting for output...')
    voltspot.communicate()[0]
