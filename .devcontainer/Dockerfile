FROM ubuntu:22.04

# Disable interactive prompts (tzdata, locales, etc.)
ENV DEBIAN_FRONTEND=noninteractive

# Base system update
RUN apt-get update && apt-get install -y \
    software-properties-common \
    apt-utils

# Install XFCE desktop + VNC + noVNC + websockify
RUN apt-get update && apt-get install -y \
    xfce4 \
    xfce4-goodies \
    tigervnc-standalone-server \
    tigervnc-common \
    novnc \
    websockify \
    xauth \
    x11-apps \
    dbus-x11

# Install browsers (Firefox + Chromium from Debian packages)
RUN apt-get update && apt-get install -y \
    firefox \
    chromium \
    chromium-common \
    chromium-codecs-ffmpeg-extra

# Convenience tools
RUN apt-get install -y \
    curl \
    wget \
    git \
    nano

# Create noVNC directory link (Ubuntu stores it here)
RUN ln -s /usr/share/novnc /opt/novnc

# Expose noVNC port
EXPOSE 6082

# Default command (user runs start-desktop.sh manually)
CMD ["/bin/bash"]
