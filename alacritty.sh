#!/bin/bash

current_dir=$(pwd)

sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm git base-devel curl zsh nvim

sudo pacman -S --noconfirm alacritty eza 

chsh -s $(which zsh)

mkdir -p ~/.config/zsh/
touch    ~/.config/zsh/zsh_history

mv $(pwd)/.zshrc ~/.zshrc

mkdir -p ~/.config/alacritty
mv $(pwd)/alacritty ~/.config/alacritty 


git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.config/zsh/powerlevel10k
echo 'source ~/.config/zsh/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.config/zsh/autosuggestions
echo 'source ~/.config/zsh/autosuggestions/autosuggestions.zsh-theme' >>~/.zshrc

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.config/zsh/zsh-syntax-highlighting
echo 'source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' >>~/.zshrc

#cambiare bg color a 0  video di josean martinez

