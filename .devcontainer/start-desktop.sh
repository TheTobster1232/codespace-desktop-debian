#!/bin/bash
#
# Stable Desktop Startup Script (Template‑Safe)
# ---------------------------------------------
# This version ensures:
# • LXDE always starts
# • .Xauthority permissions are fixed
# • x11vnc never crashes from cookie errors
# • websockify always connects
# • Works for ALL Codespaces users

# Start virtual display
Xvfb :2 -screen 0 1280x800x32 -fbdir /tmp &
sleep 3
export DISPLAY=:2

# Fix Xauthority permissions (critical for templates)
touch ~/.Xauthority
chmod 600 ~/.Xauthority

# Start LXDE session
lxsession &
sleep 5

# Start VNC server (stable flags)
x11vnc -display :2 \
  -auth ~/.Xauthority \
  -nopw \
  -forever \
  -shared \
  -rfbport 5902 &
sleep 3

# Start noVNC
websockify --web=/usr/share/novnc/ 6082 localhost:5902 &
