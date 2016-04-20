#!/usr/bin/python

import argparse
import sys
import time
import numpy as np
import scipy.ndimage.interpolation as interp
import matplotlib.animation as animation
import matplotlib.pyplot as plt
import matplotlib.cm as cm
import matplotlib.patches as patch
from multiprocessing import Pool

from moviepy.video.io.bindings import mplfig_to_npimage
import moviepy.editor as mpy


def getFloorPlan(floorplan, scale):
    # Get data and header from floorplan file
    filedata = np.genfromtxt(
        floorplan, dtype='float32', usecols=(1, 2, 3, 4))
    filedata = filedata.transpose()
    header = np.genfromtxt(floorplan, dtype='str', usecols=(0))
    layout = list()
    for i in xrange(header.shape[0]):
        width = scale * filedata[0][i]
        height = scale * filedata[1][i]
        x = scale * filedata[2][i]
        y = scale * filedata[3][i]
        layout.append(
            (header[i], patch.Rectangle((x, y), width, height, fill=False)))
    return layout


def ReadHotspotFrame(hfd, hsize=None, tsize=(100, 100)):
    xcount = 0
    ycount = 0
    newline = False
    if hsize:
        hframe = np.zeros(hsize, dtype=np.float32)
    else:
        hframe = np.zeros((2, 2), dtype=np.float32)
    for line in hfd:
        if line == '\n':
            if newline is True:
                break
            xcount = 0
            ycount += 1
            newline = True
        else:
            value = line.split()
            if xcount >= hframe.shape[1]:
                hframe = np.c_[hframe, np.zeros(hframe.shape[0])]
            if ycount >= hframe.shape[0]:
                hframe = np.r_[hframe, np.zeros((1, hframe.shape[1]))]
            hframe[ycount, xcount] = np.float32(value[1])
            xcount += 1
            newline = False
    hframe = hframe[::-1, :]
    # Resize hotspot frame to tsize
    if hframe.shape != tsize:
        hframe = interp.zoom(
            hframe, float(tsize[1]) / float(hframe.shape[1]), order=3)
    return hframe


def ReadVoltspotFrame(vfd, vsize=(2, 2), tsize=(100, 100)):
    vframe = np.array(vfd.readline().split(), dtype=np.float32)
    vframe = vframe.reshape(vsize[1], vsize[0])
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
vframe = ReadVoltspotFrame(vfd, vsize=(xdim, ydim))
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
    vfr = ReadVoltspotFrame(vfd, vsize=(xdim, ydim))
    imv.set_data(vfr)
    return imv


def make_hframe(n):  # Define function for generating frames
    hframe_index.set_text('Line #' + str(n + 1))
    hfr = ReadHotspotFrame(hfd, hframe.shape)
    imh.set_data(hfr)
    return imh

print("Writing animation...")
vwriter = animation.FFMpegWriter(fps=2, codec='mpeg4')
hwriter = animation.FFMpegWriter(fps=60, codec='mpeg4')


def write_vani():
    ani = animation.FuncAnimation(
        figv, make_vframe, 1995, interval=1)
    ani.save('voltspot.mp4', writer=vwriter, dpi=300)


def write_hani():
    ani = animation.FuncAnimation(
        figh, make_hframe, 1995, interval=1)
    ani.save('hotspot.mp4', writer=hwriter, dpi=300)


pool = Pool()
poolv = pool.apply_async(write_vani)
poolh = pool.apply_async(write_hani)
print(poolv.get())
print(poolh.get())

print('Animation complete!')
# ani.save('kmeans.gif', writer='imagemagick', dpi=100)
