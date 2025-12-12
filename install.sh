#!/usr/bin/env bash

sudo apt update
sudo apt install -y wget build-essential linux-headers-$(uname -r) dkms
wget -O- https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo gpg --dearmor --yes --output /usr/share/keyrings/oracle-virtualbox-2024.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/oracle-virtualbox-2024.gpg] https://download.virtualbox.org/virtualbox/debian bookworm contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
sudo apt update
sudo apt install -y virtualbox-7.2.4
sudo apt install -y vagrant ansible sshpass

echo "[*] Todo descargado exitosamente"
