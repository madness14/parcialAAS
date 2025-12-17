#!/usr/bin/env bash

#######################
# Script de instalacion para debian
# ejecutar este antes del main
# ejecutar como root 
#   $ sudo bash install.sh
#######################

apt update
apt install -y wget build-essential linux-headers-$(uname -r) dkms
wget -O- https://www.virtualbox.org/download/oracle_vbox_2016.asc | gpg --dearmor --yes --output /usr/share/keyrings/oracle-virtualbox-2024.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/oracle-virtualbox-2024.gpg] https://download.virtualbox.org/virtualbox/debian bookworm contrib" | tee /etc/apt/sources.list.d/virtualbox.list
apt update
apt install -y virtualbox-7.2.4
apt install -y vagrant ansible sshpass

echo "[*] Todo descargado exitosamente"
