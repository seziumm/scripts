#!/bin/bash 

sudo rm -rf ~/.config/nvim
sudo rm -rf ~/.local/share/nvim


sudo pacman -S wl-clipboard git neovim --noconfirm ttf-meslo-nerd

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

cp -r nvim/ ~/.config/

nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
# g + ? to see nvim-tree commands
