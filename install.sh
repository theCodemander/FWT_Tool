#!/bin/bash
mkdir /opt/fwt \
        /opt/fwt/main \
        /opt/fwt/main/cache \
        /opt/fwt/main/files \
        /opt/fwt/main/templates \
        /opt/fwt/main/captures \
        /srv/http/fwtPage

cp ./scripts/fwt /usr/local/bin
chmod +x /usr/local/bin/fwt

cp -r ./scripts/templates /opt/fwt/main/

pacman -S xterm aircrack-ng hostapd apache lighttpd iw dnsmasq wireshark-cli wireshark-qt python python-pip --noconfirm 
pacman -S python-click --noconfirm

echo -e "\033[32m Done!\033[37m - Now you can just type \033[31m sudo fwt --help \033[37m in the terminal to start the tool!"
