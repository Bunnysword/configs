#!/bin/bash

mkdir -p ~/.config/{MangoHud,fastfetch,pipewire/pipewire.conf.d,fish/functions}
wget https://raw.githubusercontent.com/Bunnysword/Confiles/refs/heads/main/urlconf.txt && wget -i urlconf.txt
mv MangoHud.conf ~/.config/MangoHud/
mv 10-no-resampling.conf ~/.config/pipewire/pipewire.conf.d/
mv 10-sound.conf ~/.config/pipewire/pipewire.conf.d/
mv config.fish ~/.config/fish/
mv fish_prompt.fish ~/.config/fish/functions/
mv -i plasmashellrc ~/.config
mv -i breezerc ~/.config

mkdir ~/.local/share/color-schemes
mv SwordColors.colors ~/.local/share/color-schemes/
mv swordprofile.profile ~/.local/share/konsole/
mv WhiteOnBlack.colorscheme ~/.local/share/konsole/
mv kcm-about-distrorc ~/.config/kdedefaults/
cp bugs.png ~/.config/kdedefaults/
mv bugs.png ~/.config/fastfetch/
mv config.jsonc ~/.config/fastfetch/

plasma-apply-colorscheme SwordColors
sudo mv nvidia-kms.conf /etc/modprobe.d/
sudo mv environment /etc
