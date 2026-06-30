#!/bin/bash

# Kill old sessions
pkill Xvfb 2>/dev/null
pkill x11vnc 2>/dev/null
pkill fluxbox 2>/dev/null
pkill openbox 2>/dev/null

# Start fresh display
Xvfb :2 -screen 0 1280x800x24 &
export DISPLAY=:2

# Start window manager
openbox &

# Start VNC
x11vnc -display :2 -nopw -forever -shared -rfbport 5902 &

# Start noVNC
websockify --web=/usr/share/novnc/ 6082 localhost:5902
