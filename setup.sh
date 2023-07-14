#!/bin/bash


#https://stackoverflow.com/     questions/6967331/how-do-i-install-a-script-to-run-anywhere-from-the-command-line

mkdir /opt/fwt \
        /opt/fwt/main \
        /opt/fwt/files \
        /opt/fwt/main/captures \
        /srv/http/fwtPage

#cp ./scripts/fwt-1.1.5 /usr/local/bin


pacman -S xterm aircrack-ng hostapd apache dnsmasq wireshark-cli wireshark-qt python python-pip --noconfirm 
pacman -S python-click  --noconfirm

usr=$(whoami)
export PATH=$PATH:/usr/$usr/bin

echo -e "\033[32m Done!\033[37m - Now you can just type \033[31m sudo fwt -h \033[37m in the terminal to start the tool!"
