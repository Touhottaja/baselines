#!/bin/bash

apt_packages=(
    # Editors
    vim
    ipython3
    # Window managers
    i3
    i3lock
    arandr
    # Environments
    python3-venv
    # Screenshots (on i3)
    xclip
    maim
    # Networking
    curl
    # Fun stuff
    cowsay
    fortune
    # Hacking/CTF
    nmap
    ffuf
    gobuster
    # Util
    brightnessctl
    htop
)

snap_packages=(
    # Editors
    code
)

install_packages_apt() {
    for package in "${apt_packages[@]}"; do
        sudo apt install -y "$package"
    done
}

install_packages_snap() {
    for package in "${snap_packages[@]}"; do
        sudo snap install --classic "$package"
    done
}

sudo apt update
sudo apt upgrade -y

install_packages_apt
install_packages_snap

sudo apt autoremove -y
