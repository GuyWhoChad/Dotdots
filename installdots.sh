#!/bin/bash

echo "Welcome to my install script for my dotfiles, run at your own risk, no helps or issues will be answered!"
sudo pacman -S $(cat configs/scripts/todeps.txt)
sudo systemctl enable NetworkManager
mkdir ~/.config
mkdir ~/.local/share/dwm
cp autostart/autostart.sh ~/.local/share/dwm
mv configs/alacritty ~/.config/
mv configs/dwm_w_flexipatch ~/.config/
mv configs/scripts ~/
mv bashrc ~/.bashrc
mv bash_profile ~/.bash_profile
mv configs/dmenu ~/.config
mv config/* -r ~/
cd ~/.config/dwm
sudo make clean install
cd ~/.config/dmenu
sudo make clean install
sudo systemctl enable sddm
echo "All done! reboot and have fun!"
