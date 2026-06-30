#!/bin/bash
#
# Video‑Optimized Desktop Startup Script
# -------------------------------------
# This version of the Codespaces desktop is tuned specifically
# for smoother video playback inside VNC/noVNC.
#
# Improvements include:
# • Higher color depth (32‑bit) for cleaner motion
# • Longer LXDE startup delay for stability
# • x11vnc flags that reduce tearing and frame throttling
# • noVNC stable mode for consistent playback
#
# This script is recommended when watching YouTube, Twitch,
# Vimeo, or any browser‑based video inside the Codespace desktop.
#

# Start virtual display (higher color depth for smoother video)
Xvfb :2 -screen 0 1280x800x32 -fbdir /tmp &
sleep 3
export DISPLAY=:2

# Start LXDE session (extra delay prevents crashes)
lxsession &
sleep 4

# Start VNC server with video‑optimized flags
x11vnc -display :2 \
  -nopw \
  -forever \
  -shared \
  -rfbport 5902 \
  -xdamage \
  -noxdamage \
  -noxfixes \
  -ncache 0 \
  -ncache_cr \
  -clip 0x0+0+0 &
sleep 2

# Start noVNC (stable mode for video playback)
websockify --web=/usr/share/novnc/ 6082 localhost:5902 &
