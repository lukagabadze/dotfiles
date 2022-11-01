export WP_PATH="$HOME/.config/wallpaper"
export XDG_CONFIG_HOME="$HOME/.config"
export ALIASES="$HOME/.local/share/aliases"
export SCRIPTS="$HOME/.local/share/scripts"

export EDITOR="nvim"
export USER_COLOR="yellow"

export PATH="$PATH:$SCRIPTS:/usr/sbin"

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
