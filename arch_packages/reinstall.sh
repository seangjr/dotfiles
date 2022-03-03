#!/bin/bash

pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

for pkgName in $(cat packages.txt)
do
  sudo pacman -S --noconfirm $pkgName
done
echo "Reinstalled all packages!"
