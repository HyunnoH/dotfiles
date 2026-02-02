#!/bin/bash

sudo pacmsn -Syu

# Install yay
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si

# Install additional packages
yay -S tmux vim zsh starship

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp vimrc ~/.vimrc
cp .tmux.conf ~/.tmux.conf
cp .zshrc ~/.zshrc

mkdir -p ~/.config
starship preset gruvbox-rainbow -o ~/.config/starship.toml 

# Set git credentials
git config --global user.name "HyunnoH"
git config --global user.email "hyunnoh01@gmail.com"
