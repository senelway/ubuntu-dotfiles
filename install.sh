#!/bin/bash

sudo pacman -Syu --noconfirm

sudo pacman -S --noconfirm \
  blueman \
  bluez-utils \
  firefox-developer-edition \
  zsh \
  polybar \
  gnupg \
  pass \
  go \
  rust \
  git \
  fzf \
  xclip \
  feh \
  miam \
  thunar \
  ttf-fira-code ttf-firacode-nerd noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra \
  alacritty \
  neovim \
  thunar \
  postgresql \
  docker \
  telegram-desktop

sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service

git clone --recurse-submodules git@github.com:senelway/nvim.git
git clone --recurse-submodules https://github.com/catppuccin/alacritty.git ~/.config/alacritty/catppuccin

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

ln -s ~/.config/tmux/.tmux.conf ~/.tmux.conf
ln -s ~/.config/.zshrc ~/.zshrc

curl -sS https://starship.rs/install.sh | sh
