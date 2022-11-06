# /=======\
# |Folders|
# \=======/
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export ALIASES_HOME="$XDG_DATA_HOME/aliases"
export SCRIPTS_HOME="$XDG_DATA_HOME/scripts"
export NVIM_HOME="$XDG_CONFIG_HOME/nvim"


# /=============\
# |Configs/Files|
# \=============/
export ZSHRC="$XDG_CONFIG_HOME/zsh/.zshrc"
export ZPROFILE="$HOME/.zprofile"
export ZSHENV="$HOME/.zshenv"
export XINITRC="$HOME/.xinitrc"
export INFOKEY="$XDG_CONFIG_HOME/info/infokey"
export TMUXCONF="$XDG_CONFIG_HOME/tmux/tmux.conf"

export STARTUP_SCRIPT="$SCRIPTS_HOME/startup"
export WALLPAPER="$HOME/.config/wallpaper"


# /=======\
# |General|
# \=======/
export EDITOR="nvim"
export USER_COLOR="yellow"
export PATH="$PATH:$SCRIPTS_HOME:/usr/sbin"
export WM="dwm"


# /===============\
# |Startx on Login|
# \===============/
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
