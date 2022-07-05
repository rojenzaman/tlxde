# https://hub.docker.com/r/dorowu/ubuntu-desktop-lxde-vnc/
FROM dorowu/ubuntu-desktop-lxde-vnc:focal

# Signal
RUN sudo rm -f /etc/apt/sources.list.d/google-chrome.list; \
    wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg; \
    cat signal-desktop-keyring.gpg | sudo tee -a /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null; \
    echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' | \
    sudo tee -a /etc/apt/sources.list.d/signal-xenial.list; \
    sudo apt update && sudo apt install -y signal-desktop; \
    sudo rm -rf /var/lib/apt/lists/*;

# Set Signal desktop file
ARG USER
RUN mkdir -p /home/${USER}/Desktop; \
    cp /usr/share/applications/signal-desktop.desktop /home/${USER}/Desktop;
