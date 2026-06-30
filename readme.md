Codespace Desktop (Debian)
This repository provides a lightweight Linux desktop environment inside GitHub Codespaces using:

• Xvfb (virtual display)
• LXDE (full desktop environment)
• x11vnc (VNC server)
• noVNC (browser viewer)
• Chromium + Firefox ESR (web browsers)

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
• Menu button (bottom‑left corner, like the Windows Start button)
• Desktop icons
• File manager
• Stable session that stays visible even when windows close

Opening Chromium (recommended for speed)
Click the bottom‑left Start button → Internet → Chromium Web Browser

Chromium is faster inside VNC and gives higher speed‑test results than Firefox ESR.

Opening Firefox ESR
Click the bottom‑left Start button → Internet → Firefox ESR

VPN Extension (Recommended)
Inside Chromium or Firefox, install:

Browsec VPN

It is lightweight, free, requires no account, and works reliably inside Codespaces.

To install it:

Open Chromium

Go to the Chrome Web Store

Search “Browsec VPN”

Click “Add to Chrome”

Important: WebGL Does Not Work
WebGL is not supported inside this desktop environment.

This is because:

• Codespaces containers do not provide GPU acceleration
• Xvfb is a software-only virtual display
• VNC/noVNC cannot forward GPU contexts
• Chromium and Firefox fall back to “software rendering only”

This means:

• WebGL sites will not load
• 3D graphics will not render
• GPU-accelerated features will be disabled
• Browser-based games and 3D apps will not work

This is normal and expected for all cloud desktops using Xvfb + VNC.

Troubleshooting
If the desktop does not appear:

• Run the start script again:
.devcontainer/start-desktop.sh
• Refresh the VNC page
• Make sure you clicked port 6082  
• Make sure you added /vnc.html at the end of the URL
• If the screen is black, wait a few seconds — LXDE may still be loading

Repo Structure
.devcontainer/
• devcontainer.json
• Dockerfile
• start-desktop.sh
