#!/bin/bash

pacman -S --noconfirm gum

echo "What would you like your usename to be?"
USER=$(gum input --placeholder "username" --prompt "Username> ")

useradd -m $USER
passwd $USER
echo "$USER   ALL=(ALL:ALL) ALL" >> /etc/sudoers
echo "[user]" >> /etc/wsl.conf
echo "default=$USER" >> /etc/wsl.conf

echo "What would you like your hostname to be?"
HOST=$(gum input --placeholder "hostname" --prompt "Hostname> ")

echo "[network]" >> /etc/wsl.conf
echo "hostname=$HOST" >> /etc/wsl.conf
echo "generateHosts=false" >> /etc/wsl.conf

gum confirm "Reboot to setup complete user setup?" && reboot
