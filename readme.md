Codespace Desktop (Ubuntu + XFCE)
This repository provides a smooth, stable Linux desktop environment inside GitHub Codespaces using:

• XFCE (full desktop environment)
• TigerVNC (high‑performance VNC server)
• noVNC (browser viewer)
• Chromium (recommended browser)

This setup is optimized for stability, smooth video playback, and zero connection errors. It is significantly more reliable than LXDE/x11vnc and works consistently for all Codespaces users.

Start the Desktop
Open a Codespace for this repository.

In the terminal, run:

.devcontainer/start-desktop.sh

Wait 5–10 seconds for the desktop to initialize.

Open the Desktop (VNC Viewer)
Open the Ports tab at the bottom of the Codespaces window.

Find the port labeled 6082.

Click Open in Browser.

Add /vnc.html to the end of the URL.

Example:

https://<codespace-name>-6082.app.github.dev/vnc.html

This loads the full XFCE desktop inside your browser.

Using the Desktop
Once loaded, you will see:

• XFCE panel
• Application menu
• File manager
• Chromium browser
• A stable session that does not disconnect or crash

Opening Chromium
Applications Menu → Internet → Chromium Web Browser

Chromium provides the best performance for video playback inside VNC.

VPN Extension (Optional)
If you need a VPN inside the desktop, install:

Browsec VPN
(Chrome Web Store → “Add to Chrome”)

Note: Browser‑based VPNs are slower than Azure’s direct connection. Expect around 30–40 Mb/s instead of multi‑gigabit speeds.

Important: WebGL Does Not Work
WebGL and GPU acceleration are not supported inside Codespaces desktops.

This is expected because:

• Containers do not provide GPU access
• TigerVNC and noVNC use software rendering
• Chromium falls back to “software rendering only”

This means:

• WebGL sites will not load
• 3D browser apps will not run
• GPU‑accelerated features are disabled

Video playback still works smoothly.

Video Playback Tips
For the smoothest experience:

• Use Chromium
• Use 720p or 480p for best motion
• Avoid fullscreen (Theater Mode is smoother)
• Disable VPN while watching videos
• Keep resolution at 1280×800 for best performance

Troubleshooting
If the desktop does not appear:

• Run the start script again
• Refresh the VNC page
• Ensure you added /vnc.html
• Ensure port 6082 is open
• Rebuild the Codespace if needed

TigerVNC does not use Xauthority cookies, so you will not see “Failed to connect” errors.

Repo Structure
.devcontainer/
• Dockerfile
• devcontainer.json
• start-desktop.sh

readme.md
