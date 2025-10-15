#!/bin/env bash

echo "Network setup"

# COPY config/custom.conf /etc/systemd/resolved.conf.d/custom.conf
sudo rm -f /etc/resolv.conf
sudo ln -sv /run/systemd/resolve/resolv.conf /etc/resolv.conf

sudo apt-get -y install network-manager
sudo systemctl enable NetworkManager

echo "Installing desktop environment"

sudo apt-get -y install xfce4 lightdm
