# WLS Arch - Create User

Inspired by DHH's Omarchy for exploring ArchLinux and Hyprland.

I wanted to play around with Arch in WSL for work.

WSL Arch drops you in as root. This script will help you create a default user
so you can start exploring the best of linux even if you are stuck on Windows.


## Window Terminal
`wsl --install archlinux`

`wsl -d archlinux`

## Install Command
`pacman -Sy wget && wget -qO- https://raw.githubusercontent.com/bandrada/wslarch/refs/heads/main/createuser.sh | bash`

## Steps
1. Create a user
2. Set user password
3. Allow that user to be super user
4. Set hostname
