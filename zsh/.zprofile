# /=======\
# |Folders|
# \=======/
export XDG_CONFIG_HOME="$HOME/.config"
export ALIASES_HOME="$HOME/.local/share/aliases"
export SCRIPTS_HOME="$HOME/.local/share/scripts"


# /=============\
# |Certain Files|
# \=============/
export STARTUP_SCRIPT="$SCRIPTS_HOME/startup"
export WALLPAPER="$HOME/.config/wallpaper"
export INFOKEY="$HOME/.config/info/infokey"


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
