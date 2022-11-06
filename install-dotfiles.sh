#/bin/bash

# This script installs all configs in this directory,
# by using on environment variables set in zsh/.zprofile

source zsh/.zprofile

alias cp="cp -v"
alias echo="echo -e"


# zsh
echo "zsh"
mkdir -p $XDG_CONFIG_HOME/zsh
cp zsh/.zprofile $ZPROFILE
cp zsh/.zshenv $ZSHENV
cp zsh/.zshrc $ZSHRC


# aliases
echo "\naliases"
cp -Tr aliases $ALIASES_HOME


# tmux
echo "\ntmux"
mkdir -p $XDG_CONFIG_HOME/tmux
cp tmux/tmux.conf $TMUXCONF


# x11
echo "\nx11"
cp x11/.xinitrc $XINITRC


# info
echo "\ninfo"
mkdir -p $XDG_CONFIG_HOME/info
cp info/infokey $INFOKEY


# nvim (multiple choice)
echo "\nnvim"
mkdir -p $XDG_CONFIG_HOME/nvim
cp nvim/$NVIM_MODE/* $NVIM_HOME
