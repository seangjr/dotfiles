#!/bin/bash

for pkgName in $(cat packages.txt)
do
  sudo pacman -S --noconfirm $pkgName
done
echo "Reinstalled all packages!"
