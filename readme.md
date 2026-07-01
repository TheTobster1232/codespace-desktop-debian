Codespace Desktop (Ubuntu + XFCE)
This repository provides a lightweight Linux desktop environment inside GitHub Codespaces using:

• XFCE (full desktop environment)
• TigerVNC (VNC server)
• noVNC (browser viewer)
• Firefox and Chromium (preinstalled)

The setup is designed to be stable, smooth, and easy for anyone to launch inside a Codespace.

Start the Desktop
Open a Codespace for this repository.

In the terminal, run:

.devcontainer/start-desktop.sh

Wait 5–10 seconds for the desktop to start.

Open the Desktop (noVNC Viewer)
Open the Ports tab at the bottom of the Codespaces window.

Locate port 6082.

Click Open in Browser.

Add /vnc.html to the end of the URL.

Example:

https://<codespace-name>-6082.app.github.dev/vnc.html

The desktop will load immediately.
No password is required.

Using the Desktop
Once loaded, you will see:

• XFCE panel
• Application menu
• File manager
• Firefox
• Chromium

Opening the browsers
Applications Menu → Internet → Firefox
Applications Menu → Internet → Chromium Web Browser

Chromium provides the best performance for video playback inside VNC.

VPN Extension (Optional)
If you need a VPN inside the desktop, you can install Browsec VPN from the Chrome Web Store.

Browser‑based VPNs are slower than Azure’s direct connection, so speeds may be lower.

WebGL and GPU Acceleration
GPU acceleration is not available inside Codespaces containers.
Chromium and Firefox will run in software rendering mode, which is expected.
Video playback still works smoothly.

Video Playback Tips
For best results:

• Use Chromium
• Use 720p or 480p
• Avoid fullscreen (Theater Mode is smoother)
• Disable VPN while watching videos
• Keep the desktop resolution at 1280×800

Troubleshooting
If the desktop does not appear:

• Run the start script again
• Refresh the VNC page
• Ensure /vnc.html is added to the URL
• Confirm port 6082 is open
• Rebuild the Codespace if needed

Repository Structure
.devcontainer/
• Dockerfile
• devcontainer.json
• start-desktop.sh

readme.md
