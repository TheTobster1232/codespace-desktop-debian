#!/bin/bash

# Start XFCE session
export DISPLAY=:1
startxfce4 &

# Start TigerVNC with no password
vncserver :1 -geometry 1280x800 -depth 24 -SecurityTypes None

# Start noVNC
websockify --web=/usr/share/novnc/ 6082 localhost:5901

