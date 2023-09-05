#! /usr/bin/bash

cd ~
sudo apt update
sudo apt upgrade
curl -s https://api.github.com/repos/clementgallet/libtas/releases/latest | grep -Po "(?<=\"browser_download_url\": \").*_amd64.*(?=\")" | xargs wget
sudo apt install -y ./libtas*.deb
export WAYLAND_DISPLAY=""
echo 'export WAYLAND_DISPLAY=""' >> .bash_profile
