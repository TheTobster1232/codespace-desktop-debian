FROM debian:12

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    xfce4 \
    xfce4-goodies \
    tigervnc-standalone-server \
    tigervnc-common \
    novnc \
    websockify \
    xauth \
    x11-apps \
    dbus-x11 \
    firefox-esr \
    chromium \
    curl \
    wget \
    git \
    nano

RUN ln -s /usr/share/novnc /opt/novnc

EXPOSE 6082

CMD ["/bin/bash"]
