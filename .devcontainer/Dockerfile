FROM mcr.microsoft.com/devcontainers/base:debian

RUN apt update && apt install -y \
    xfce4 \
    x11vnc \
    xvfb \
    novnc \
    websockify \
    firefox-esr \
    curl \
    wget \
    git \
    nano

RUN mkdir -p /root/.vnc && \
    x11vnc -storepasswd 1234 /root/.vnc/passwd
