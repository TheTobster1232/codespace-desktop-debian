#!/bin/bash

# Create VNC password
mkdir -p ~/.vnc
vncpasswd

# Start XFCE session
export DISPLAY=:1
vncserver :1 -geometry 1280x800 -depth 24

# Start noVNC
websockify --web=/usr/share/novnc/ 6082 localhost:5901
