#--------------------------------------------------#

export EDITOR=nvim
export VISUAL=nvim
export LANG=en_US.UTF-8
export LC_TIME=en_US.UTF-8

#--------------------------------------------------#

HISTFILE=~/.config/zsh/zsh_history
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify
setopt globdots

bindkey '^P' history-search-backward
bindkey '^N' history-search-forward
bindkey '^[I' autosuggest-accept
#--------------------------------------------------#

alias nvimconf="nvim ~/.config/nvim/"
alias zshconf="nvim ~/.zshrc"
alias hyprconf="nvim ~/.config/hypr/"
alias alacrittyconf="nvim ~/.config/alacritty/alacritty.toml"
alias h="history"
alias vi="nvim"
alias svi="sudoedit nvim"

alias ls="eza --color=always --long --no-filesize --icons=always --no-time --no-permissions" 
alias tree="eza --color=always --long --no-filesize --icons=always --no-time --no-permissions --tree" 
# --all per vedere i file nascosti

#--------------------------------------------------#
