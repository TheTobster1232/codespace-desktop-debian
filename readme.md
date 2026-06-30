Codespace Desktop (Debian)
This repository provides a lightweight Linux desktop environment inside GitHub Codespaces using:

• Xvfb (virtual display)
• LXDE (full desktop environment)
• x11vnc (VNC server)
• noVNC (browser viewer)
• Firefox ESR (web browser)

LXDE is used because it provides a full, stable desktop that does not turn black when windows close.

Start the Desktop
Open a Codespace for this repository.

In the terminal, run:

.devcontainer/start-desktop.sh

Wait 5–10 seconds for the desktop to initialize.

Open the Desktop (VNC Viewer)
At the bottom of the Codespaces window, click the Ports tab.

Find the port labeled 6082.

Click Open in Browser next to port 6082.

When the browser tab opens, add /vnc.html to the end of the URL.

Example:
https://<codespace-name>-6082.app.github.dev/vnc.html

Replace <codespace-name> with the actual name shown in your browser tab.

This loads the full LXDE desktop.

Using the Desktop
Once the desktop loads, you will see:

• LXDE panel at the bottom
• Menu button
• Desktop icons
• File manager
• Stable session that stays visible even when windows close

To open Firefox:

Menu → Internet → Firefox ESR

Troubleshooting
If the desktop does not appear:

• Run the start script again:
.devcontainer/start-desktop.sh
• Refresh the VNC page
• Make sure you clicked port 6082  
• Make sure you added /vnc.html at the end of the URL
• If the screen is black, wait a few seconds — LXDE may still be loading

Optional: VPN Extension
If you want a simple, free, no‑account VPN inside Firefox, install:

Browsec VPN
It is lightweight and works well inside Codespaces.

Repo Structure
.devcontainer/
• devcontainer.json
• Dockerfile
• start-desktop.sh
