#/!/bin/bash


# --------------------- PACKAGES --------------------- #

sudo pacman -Syu --noconfirm ttf-meslo fastfetch zsh git ripgrep wl-clipboard neovim eza alacritty firefox thunar wofi waybar hyprland hyprpaper


# --------------------- ZSH SHELL --------------------- #
chsh -s $(which zsh)


# xdg-mime default thunar.desktop inode/directory
# set defualt file manager for firefox

# --------------------- BLUETOOTH --------------------- #

sudo pacman -Syu --noconfirm bluez bluez-utils pulseaudio 

# ---------------------     YAY      --------------------- #


cd ~
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ~


# ------------------------- NVIM ------------------------- #

# Clone Packer.nvim
echo "Installing nvim packer..." 

# Rimuovi la vecchia cartella di packer.nvim se esiste
rm -rf ~/.local/share/nvim/site/pack/packer/start/packer.nvim
if [ $? -ne 0 ]; then
  echo "Failed to remove old packer.nvim directory."
  exit 1
fi

# Clona il repository di packer.nvim
git clone --quiet --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
if [ $? -ne 0 ]; then
  echo "Failed to clone packer.nvim."
  exit 1
fi

# Elimina le vecchie configurazioni di nvim
echo "Deleting older nvim config..." 
rm -rf ~/.config/nvim/

mkdir -p ~/.config/nvim

if [ $? -ne 0 ]; then
  echo "Failed to remove old nvim config directory."
  exit 1
fi

rm -rf ~/.local/share/nvim
if [ $? -ne 0 ]; then
  echo "Failed to remove old nvim data directory."
  exit 1
fi

# Clona il nuovo repository di configurazione nvim in una cartella temporanea
git clone --quiet --depth 1 https://github.com/seziumm/nvim.git ~/.config/nvim
if [ $? -ne 0 ]; then
  echo "Failed to clone new nvim configuration."
  exit 1
fi

echo "Use g + ? to see nvim-tree commands\n\n"
echo "Nvim is done"



# --------------------- ALACRITTY --------------------- #

# sudo pacman -Syu ttf-meslo
rm -rf ~/.config/alacritty/

mkdir -p ~/.config/alacritty


if [ $? -ne 0 ]; then
  echo "Failed to remove old alacritty config."
  exit 1
fi

git clone --quiet --depth 1 https://github.com/seziumm/alacritty.git ~/.config/alacritty
if [ $? -ne 0 ]; then
  echo "Failed to clone new alacritty configuration."
  exit 1
fi

echo "Alacritty is done"


# ---------------------   CURSOR     --------------------- #

echo "Installing cursor theme..."
sudo pacman -Syu
sudo pacman -S nwg-look
yay -S rose-pine-cursor
nwg-look

echo "Cursor is done"


# ---------------------   HYPRLAND --------------------- #

echo "Installing hyprland..."
rm -rf ~/.config/hypr/

mkdir -p ~/.config/hypr

if [ $? -ne 0 ]; then
  echo "Failed to remove old hypr config."
  exit 1
fi

git clone --quiet --depth 1 https://github.com/seziumm/hypr.git ~/.config/hypr
if [ $? -ne 0 ]; then
  echo "Failed to clone new hypr configuration."
  exit 1
fi

echo "Hyprland is done"

# ---------------------   WAYBAR --------------------- #

echo "Installing Waybar..."
rm -rf ~/.config/waybar/

mkdir -p ~/.config/waybar

if [ $? -ne 0 ]; then
  echo "Failed to remove old Waybar config."
  exit 1
fi

git clone --quiet --depth 1 https://github.com/seziumm/waybar.git ~/.config/waybar
if [ $? -ne 0 ]; then
  echo "Failed to clone new waybar configuration."
  exit 1
fi

echo "Waybar is done"



# ---------------------  WOFI --------------------- #

echo "Installing Wofi..."
rm -rf ~/.config/waybar/

mkdir -p ~/.config/wofi

if [ $? -ne 0 ]; then
  echo "Failed to remove old Wofi config."
  exit 1
fi

git clone --quiet --depth 1 https://github.com/seziumm/wofi.git ~/.config/wofi
if [ $? -ne 0 ]; then
  echo "Failed to clone new wofi configuration."
  exit 1
fi

echo "Wofi is done"



echo "ALL DONE!"




# --------------------- ZSH CONF ------------------- #

# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi
#
# #--------------------------------------------------#
#
# export EDITOR=nvim
# export VISUAL=nvim
# export LANG=en_US.UTF-8
# export LC_TIME=en_US.UTF-8
# #--------------------------------------------------#
#
# HISTFILE=~/.config/zsh/.zsh_history
#
# SAVEHIST=1000
# HISTSIZE=999
# setopt share_history
# setopt hist_expire_dups_first
# setopt hist_ignore_dups
# setopt hist_verify
# setopt globdots
#
# bindkey '^P' history-search-backward
# bindkey '^N' history-search-forward
# bindkey '^[I' autosuggest-accept
# #--------------------------------------------------#
#
# alias nvimconf="nvim ~/.config/nvim/"
# alias zshconf="nvim ~/.zshrc"
# alias hyprconf="nvim ~/.config/hypr/"
# alias alacrittyconf="nvim ~/.config/alacritty/alacritty.toml"
# alias h="history"
# alias vi="nvim"
# alias svi="sudoedit nvim"
#
# alias ls="eza --color=always --long --icons=always --no-time --no-permissions --no-user" 
# alias tree="eza --color=always --long --icons=always --no-time --no-permissions --tree --no-user" 
# # --all per vedere i file nascosti
#
# #--------------------------------------------------#
# source ~/.config/zsh/powerlevel10k/powerlevel10k.zsh-theme
# source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#
# # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
#
