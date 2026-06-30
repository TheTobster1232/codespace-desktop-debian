#!/bin/bash

# Start virtual display
Xvfb :2 -screen 0 1280x800x24 &
sleep 3
export DISPLAY=:2

# Start LXDE session (stable)
lxsession &
sleep 4

# Start VNC server
x11vnc -display :2 -nopw -forever -shared -rfbport 5902 &
sleep 2

# Start noVNC
websockify --web=/usr/share/novnc/ 6082 localhost:5902 &
