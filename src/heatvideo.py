#!/usr/bin/python3

import argparse
import sys
import time
import numpy as np
import scipy.ndimage.interpolation as interp
import matplotlib.animation as animation
import matplotlib.pyplot as plt
import matplotlib.cm as cm
import matplotlib.patches as patch
import multiprocessing as mp

from moviepy.video.io.bindings import mplfig_to_npimage
import moviepy.editor as mpy


def getFloorPlan(floorplan, scale):
    # Get data and header from floorplan file
    filedata = np.genfromtxt(
        floorplan, dtype='float32', usecols=(1, 2, 3, 4))
    filedata = filedata.transpose()
    header = np.genfromtxt(floorplan, dtype='str', usecols=(0))
    layout = list()
    for i in range(header.shape[0]):
        width = scale * filedata[0][i]
        height = scale * filedata[1][i]
        x = scale * filedata[2][i]
        y = scale * filedata[3][i]
        layout.append(
            (header[i], patch.Rectangle((x, y), width, height, fill=False)))
    return layout


def ReadHotspotFrame(hfd, tsize=(100, 100)):
    hframe = np.array([x.split() for x in hfd.readline().split('|')], dtype=np.float64)
    hframe = hframe[::-1, :]
    # Resize hotspot frame to tsize
    if hframe.shape != tsize:
        hframe = interp.zoom(
            hframe, float(tsize[1]) / float(hframe.shape[1]), order=3)
    return hframe


def ReadVoltspotFrame(vfd, tsize=(100, 100)):
    vframe = np.array([x.split() for x in vfd.readline().split('|')], dtype=np.float64)
    vframe = vframe[::-1, :]
    # Resize voltspot frame to be tsize
    if vframe.shape != tsize:
        vframe = interp.zoom(
            vframe, float(tsize[1]) / float(vframe.shape[1]), order=3)
    return vframe


parser = argparse.ArgumentParser()
parser.add_argument("-f", "--floorplan", required=True,
                    help="HotSpot floorplan file.")
parser.add_argument("-t", "--hotspot-file", required=True,
                    help="HotSpot grid temperature input file.")
parser.add_argument("-v", "--voltspot-file", required=True,
                    help="VoltSpot grid voltage input file.")
parser.add_argument("-o", "--output", required=True,
                    default=sys.stdout, help="Video output file.")
args = parser.parse_args()

vnom = 1.0
xdim = 73
ydim = 73
fps = 1

# Get floor plan rectangles
print("Getting floorplan...")
vlayout = getFloorPlan(args.floorplan, 9200)
hlayout = getFloorPlan(args.floorplan, 9200)

# Setup plot structure for animation
print("Generating heatmap...")
figv = plt.figure()
figh = plt.figure()
axv = figv.add_subplot(1, 1, 1, frameon=False)
axh = figh.add_subplot(1, 1, 1, frameon=False)
axv.get_xaxis().set_visible(False)
axh.get_xaxis().set_visible(False)
axv.get_yaxis().set_visible(False)
axh.get_yaxis().set_visible(False)

# Get 3D data from grid files
print("Getting data from files...")
try:
    hfd = open(args.hotspot_file, 'r')
except IOError:
    print('Could not open hotspot file: ' + args.hotspot_file)
try:
    vfd = open(args.voltspot_file, 'r')
except IOError:
    print('Could not open voltspot file: ' + args.voltspot_file)

hframe = ReadHotspotFrame(hfd)
vframe = ReadVoltspotFrame(vfd)
print('vframe.shape = ' + str(vframe.shape))

# Generate plot for animation
imv = axv.imshow(vframe, cmap=cm.coolwarm_r, aspect='equal',
                 vmin=0.95 * vnom, vmax=vnom, interpolation='nearest')
imh = axh.imshow(hframe, cmap=cm.coolwarm_r, aspect='equal',
                 vmin=np.amin(hframe), vmax=319, interpolation='nearest')
vframe_index = axv.text(0, -1, str(1), fontsize=15)
hframe_index = axh.text(0, -1, str(1), fontsize=15)
figv.set_size_inches([10, 10])
figh.set_size_inches([10, 10])

plt.ion()
plt.show()
for rect in vlayout:
    print(rect[0])
    axv.add_patch(rect[1])
    plt.draw()
    #time.sleep(0.01)
    #plt.pause(0.0001)
for rect in hlayout:
    print(rect[0])
    axh.add_patch(rect[1])
    plt.draw()
    #time.sleep(0.01)
    #plt.pause(0.0001)
plt.show()


def make_vframe(n):  # Define function for generating frames
    vframe_index.set_text('Line #' + str(n + 1))
    vfr = ReadVoltspotFrame(vfd)
    imv.set_data(vfr)
    return imv


def make_hframe(n):  # Define function for generating frames
    hframe_index.set_text('Line #' + str(n + 1))
    hfr = ReadHotspotFrame(hfd)
    imh.set_data(hfr)
    return imh

print("Writing animation...")
vwriter = animation.FFMpegWriter(fps=2, codec='mpeg4')
hwriter = animation.FFMpegWriter(fps=60, codec='mpeg4')


def write_vani(q):
    ani = animation.FuncAnimation(
        figv, make_vframe, 1995, interval=1)
    ani.save('voltspot.mp4', writer=vwriter, dpi=300)


def write_hani(q):
    ani = animation.FuncAnimation(
        figh, make_hframe, 1995, interval=1)
    ani.save('hotspot.mp4', writer=hwriter, dpi=300)

mp.set_start_method('fork')
q = mp.Queue()
pv = mp.Process(target=write_vani, args=(q,))
ph = mp.Process(target=write_hani, args=(q,))
pv.start()
ph.start()
print(pv.get())
print(ph.get())
pv.join()
ph.join()

print('Animation complete!')
# ani.save('kmeans.gif', writer='imagemagick', dpi=100)
