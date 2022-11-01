# colors and prompt text
autoload -U colors && colors
PS1="%B%{$fg[green]%}[%{$fg[$USER_COLOR]%}%n%{$fg[$USER_COLOR]%}@%{$fg[$USER_COLOR]%}%m%{$fg[white]%} %~%{$fg[green]%}]%{$reset_color%}$%b "

# history in cache
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history
export LESSHISTFILE=-

# better tabs
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit -d ~/.cache/zsh/zcompdump-$ZSH_VERSION
_comp_options+=(globdots)  #includes hidden files

# source aliases
source $ALIASES

# keybindings
bindkey -e
