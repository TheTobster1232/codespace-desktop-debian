#!/bin/bash
#
# FINAL STABLE DESKTOP STARTUP SCRIPT
# -----------------------------------
# • Fixes .Xauthority permission issues
# • Ensures LXDE creates user-owned cookie
# • Ensures x11vnc can read the cookie
# • Prevents "Failed to connect" errors
# • Works for ALL Codespaces users

# Remove any root-owned Xauthority file
rm -f /root/.Xauthority
rm -f ~/.Xauthority

# Start virtual display
Xvfb :2 -screen 0 1280x800x32 &
sleep 3
export DISPLAY=:2

# Force-create a user-owned Xauthority cookie
xauth generate :2 . trusted
xauth add :2 . $(xxd -l 16 -p /dev/urandom)

# Start LXDE session
lxsession &
sleep 5

# Start VNC server using the correct cookie
x11vnc -display :2 \
  -auth ~/.Xauthority \
  -nopw \
  -forever \
  -shared \
  -rfbport 5902 &
sleep 3

# Start noVNC
websockify --web=/usr/share/novnc/ 6082 localhost:5902 &
