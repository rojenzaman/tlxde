# https://hub.docker.com/r/dorowu/ubuntu-desktop-lxde-vnc/
FROM dorowu/ubuntu-desktop-lxde-vnc:focal-lxqt

# Telegram version: latest
RUN wget https://telegram.org/dl/desktop/linux -O /tmp/telegram.tar.xz \
    && cd /tmp/ \
    && tar xvfJ /tmp/telegram.tar.xz \
    && mv /tmp/Telegram/Telegram /usr/bin/Telegram \
    && ln -s /usr/bin/Telegram /usr/bin/telegram \
    && rm -rf /tmp/{telegram.tar.xz,Telegram}
