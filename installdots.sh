#!/bin/bash

echo "Welcome to my install script for my dotfiles, run at your own risk, no helps or issues will be answered!"
sudo pacman -S $(cat configs/scripts/todeps.txt)
sudo systemctl enable NetworkManager
mkdir ~/.local/share/dwm
cp autostarts/autostart.sh ~/.local/share/dwm
chmod +x ~/.local/share/dwm/autostart.sh
cp configs/* ~/.config -r
cd ~/.config/dwm_w_flexipatch 
sudo pacman -S libxft libxinerama nitrogen xorg sddm 
sudo make clean install
cd ~/.config
cd dmenu
sudo make clean install

