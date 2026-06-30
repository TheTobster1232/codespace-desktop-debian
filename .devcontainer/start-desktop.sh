#!/bin/bash

# Start display
Xvfb :2 -screen 0 1280x800x24 &
sleep 2
export DISPLAY=:2

# Start window manager
openbox &
sleep 1

# Start VNC
x11vnc -display :2 -nopw -forever -shared -rfbport 5902 -ncache 0 &
sleep 1

# Start noVNC
websockify --web=/usr/share/novnc/ 6082 localhost:5902 &
sleep 3

# Auto-launch Firefox
firefox &
