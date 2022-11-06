#/bin/bash

# This script uses zsh/.zprofile to gather all configs from the system and
# puts them into their own folders, so that they can be version controlled

source zsh/.zprofile

alias cp="cp -v"
alias echo="echo -e"


# zsh
echo "zsh"
cp $ZPROFILE zsh/.zprofile
cp $ZSHENV zsh/.zshenv
cp $ZSHRC zsh/.zshrc


# aliases
echo "\naliases"
cp -Tr $ALIASES_HOME aliases


# tmux
echo "\ntmux"
cp $TMUXCONF tmux/tmux.conf


# x11
echo "\nx11"
cp $XINITRC x11/.xinitrc


# info
echo "\ninfo"
cp $INFOKEY info/infokey


# nvim
echo "\nnvim"
cp $NVIM_HOME/* nvim/$NVIM_MODE
