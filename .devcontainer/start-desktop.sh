#!/bin/bash

Xvfb :2 -screen 0 1280x800x24 -fbdir /tmp &
sleep 2
export DISPLAY=:2

lxsession &
sleep 2

x11vnc -display :2 -nopw -forever -shared -rfbport 5902 -xdamage -noxdamage -ncache 0 -ncache_cr -noxfixes &
sleep 1

websockify --web=/usr/share/novnc/ --no-compression --timeout=0 --idle-timeout=0 6082 localhost:5902 &
