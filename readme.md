Codespace Desktop (Debian)
This repository provides a lightweight Linux desktop environment inside GitHub Codespaces using:

Xvfb (virtual display)

Openbox (desktop environment)

tint2 (panel/taskbar so the desktop stays visible)

x11vnc (VNC server)

noVNC (browser viewer)

Firefox ESR (web browser)

The desktop does not auto‑start. Follow the instructions below to launch it manually.

How to Start the Desktop
Open a Codespace for this repository.

In the terminal, run:

.devcontainer/start-desktop.sh

Wait 5–10 seconds for the desktop to initialize.

Opening the VNC Viewer (IMPORTANT)
At the bottom of the Codespaces window, click the Ports tab.

Look for the port labeled 6082 — this is the noVNC port.

Click Open in Browser next to port 6082.

When the browser tab opens, add /vnc.html to the end of the URL.

Example:

https://<codespace-name>-6082.app.github.dev/vnc.html

Replace <codespace-name> with the actual name shown in your browser tab.

This will load the full desktop environment.

Using the Desktop
Once the desktop loads, you will see:

the Openbox desktop

the tint2 panel at the bottom (taskbar, clock, etc.)

To open Firefox:

Applications → Internet → Firefox ESR

Troubleshooting
If the desktop doesn’t appear:

Run the start script again:
.devcontainer/start-desktop.sh

Refresh the VNC page

Make sure you clicked port 6082

Make sure you added /vnc.html at the end of the URL

If the screen goes black, tint2 may not have started — run:
tint2 &

Optional: VPN Extension
If you want a simple, free, no‑account VPN inside Firefox, install:

Browsec VPN
It’s lightweight and works well inside Codespaces.

Repo Structure
.devcontainer/
• devcontainer.json
• Dockerfile
• start-desktop.sh

If you need help, please email 12345thfs@gmail.com, and check my github, im developing more to make your school days better
