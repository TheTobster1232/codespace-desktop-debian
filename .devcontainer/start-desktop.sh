#!/bin/bash

# Create VNC passwordless config
mkdir -p ~/.vnc
echo "" > ~/.vnc/passwd
chmod 600 ~/.vnc/passwd

# Start XFCE session
export DISPLAY=:1
vncserver :1 -geometry 1280x800 -depth 24 &
sleep 3

# Start noVNC
websockify --web=/usr/share/novnc/ 6082 localhost:5901 &
