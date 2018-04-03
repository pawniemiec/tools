#!/bin/bash


sudo apt install -y \
    atom \
    alsa-tools \
    net-tools jq fuse-exfat exfat-utils bluez-tools tilix \
    budgie-desktop budgie-screenshot-applet budgie-haste-applet budgie-weather-applet \
    budgie-indicator-applet \
    lightdm nvidia-390 touchegg compizconfig-settings-manager gnome-tweak-tool \
    virtualbox libqt5opengl5 libqt5opengl5-gles libqt5printsupport5 libqt5x11extras5 libsdl1.2debian \
    klavaro \
    steam \
    fakeroot icoutils innoextract \
    docker docker-compose \
    terraform graphviz aws-cli \
    python-pip ruby \
    apt-transport-https ca-certificates curl software-properties-common \
    spotify-client \
    whois \
    ecryptfs-utils cryptsetup \
    network-manager-openvpn network-manager-openvpn-gnome

# Fix mouse pointer issue
sudo ubuntu-drivers autoinstall

# Fix audio jack cracking problem
sudo hda-verb /dev/snd/hwC0D0 0x20 SET_COEF_INDEX 0x67
sudo hda-verb /dev/snd/hwC0D0 0x20 SET_PROC_COEF 0x3000
sudo hda-verb /dev/snd/hwC0D2 0x20 SET_COEF_INDEX 0x67
sudo hda-verb /dev/snd/hwC0D2 0x20 SET_PROC_COEF 0x3000

# Install GDrive
sudo add-apt-repository -y ppa:nilarimogard/webupd8
sudo apt-get update
apt install -y python-pyinotify expect libyajl-dev libboost-test-dev binutils-dev libboost-program-options-dev libboost-filesystem-dev libcurl4-openssl-dev libgcrypt11-dev libappindicator1
wget http://ftp.uk.debian.org/debian/pool/main/j/json-c/libjson-c2_0.11-4_amd64.deb
wget http://ftp.uk.debian.org/debian/pool/main/j/json-c/libjson0-dev_0.11-4_amd64.deb
wget http://ftp.uk.debian.org/debian/pool/main/j/json-c/libjson-c-dev_0.11-4_amd64.deb
wget http://ftp.uk.debian.org/debian/pool/main/j/json-c/libjson0_0.11-4_amd64.deb
wget https://launchpad.net/~thefanclub/+archive/ubuntu/grive-tools/+files/grive-tools_1.15_all.deb
sudo dpkg -i libjson-c2_0.11-4_amd64.deb
sudo dpkg -i libjson0_0.11-4_amd64.deb
sudo dpkg -i libjson-c-dev_0.11-4_amd64.deb
sudo dpkg -i libjson0-dev_0.11-4_amd64.deb
sudo dpkg -i grive-tools_1.15_all.deb

# encrypt home directory
# https://www.howtogeek.com/116032/how-to-encrypt-your-home-folder-after-installing-ubuntu/

# Install PyCharm
sudo snap install pycharm-community --classic

# Disable sleep on lid close
sudo sed -i '' "s/#HandleLidSwitch=suspend/HandleLidSwitch=ignore/" /etc/systemd/logind.conf
sudo systemctl restart systemd-logind

