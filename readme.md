Codespace Desktop (Ubuntu + XFCE)
This repository provides a lightweight, stable Linux desktop environment inside GitHub Codespaces using:

• XFCE (full desktop environment)
• TigerVNC (high‑performance VNC server)
• noVNC (browser‑based VNC viewer)
• Chromium (recommended browser)

This setup is designed for smooth video playback, reliable performance, and consistent behaviour across all Codespaces instances.

Start the Desktop
Open a Codespace for this repository.

In the terminal, run:

.devcontainer/start-desktop.sh

Wait 5–10 seconds for the desktop to initialize.

Open the Desktop (VNC Viewer)
Open the Ports tab at the bottom of the Codespaces window.

Locate the port labeled 6082.

Click Open in Browser.

Add /vnc.html to the end of the URL.

Example:

https://<codespace-name>-6082.app.github.dev/vnc.html

This will load the full XFCE desktop inside your browser.

Using the Desktop
Once loaded, you will see:

• XFCE panel
• Application menu
• File manager
• Chromium browser
• A stable session that remains connected

Opening Chromium
Applications Menu → Internet → Chromium Web Browser

Chromium provides the best performance for video playback inside VNC.

VNC Startup Behaviour
The desktop uses TigerVNC with passwordless authentication so that noVNC can connect immediately without prompting for credentials.
The start script automatically prepares the VNC environment and launches TigerVNC with authentication disabled, ensuring a smooth and consistent connection for all users.

VPN Extension (Optional)
If you need a VPN inside the desktop, you can install:

Browsec VPN
(Chrome Web Store → “Add to Chrome”)

Note: Browser‑based VPNs are slower than Azure’s direct connection. Expect around 30–40 Mb/s instead of multi‑gigabit speeds.

WebGL and GPU Acceleration
WebGL and GPU acceleration are not available inside Codespaces desktops.
Containers do not provide GPU access, and TigerVNC uses software rendering.
Chromium will operate in software rendering mode, which is expected.

Video playback still works smoothly.

Video Playback Tips
For the best experience:

• Use Chromium
• Use 720p or 480p for smoother motion
• Avoid fullscreen (Theater Mode performs better)
• Disable VPN while watching videos
• Keep the desktop resolution at 1280×800

Troubleshooting
If the desktop does not appear:

• Run the start script again
• Refresh the VNC page
• Ensure /vnc.html is added to the URL
• Confirm port 6082 is open
• Rebuild the Codespace if needed

TigerVNC does not rely on Xauthority cookies, so connection errors are rare.

Repository Structure
.devcontainer/
• Dockerfile
• devcontainer.json
• start-desktop.sh

readme.md
