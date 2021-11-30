# flexing on...  fuck
#neofetch

# colors and prompt text
autoload -U colors && colors
PS1="%B%{$fg[green]%}[%{$fg[yellow]%}%n%{$fg[yellow]%}@%{$fg[yellow]%}%m%{$fg[white]%}%~%{$fg[green]%}]%{$reset_color%}$%b "

export PATH="$PATH:/home/gabo/scripts:/snap/bin:/usr/sbin"
export PATH="$PATH:/usr/local/bin/.yarn/bin"

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


# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history


# Change cursor shape for different vi modes.
function zle-keymap-select {
	if [[ ${KEYMAP} == vicmd ]] ||
		 [[ $1 = 'block' ]]; then
		echo -ne '\e[1 q'
	elif [[ ${KEYMAP} == main ]] ||
			 [[ ${KEYMAP} == viins ]] ||
			 [[ ${KEYMAP} = '' ]] ||
			 [[ $1 = 'beam' ]]; then
		echo -ne '\e[5 q'
	fi
}
zle -N zle-keymap-select
zle-line-init() {
		zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
		echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.



# alias
alias ls="ls -F --color=auto"
alias grep="grep --color=always"
alias zrc="nvim ~/.config/zsh/.zshrc"
alias nrc="nvim ~/.config/nvim/init.vim"
alias crc="nvim ~/.config/nvim/coc-settings.json"
alias rrc="nvim ~/.config/ranger/rc.conf"

alias shnow="shutdown now"
alias sp="sudo power"
alias chp="chpower"

alias grepnode="grep --exclude-dir=node_modules" 

alias dimg="docker image"
alias dcon="docker container"
alias dml="docker images"
alias dcl="docker container ls"
alias dc="docker-compose"
alias dup="docker-compose up"
alias ddown="docker-compose down"

alias gitpass="xclip -selection c ~/work/gitpass"
alias g="git status"
alias gc="git commit -m"
alias gp="git push"

alias s="cd ~/scripts && ls"
alias so="open-script"
alias y="ytfzf"

alias gowin="env GOOS=windows GOARCH=386"

alias gcloud="/usr/bin/gcloud"

alias unipass="xclip -selection c ~/uni/unipass"


alias rape="pactl set-sink-input-volume" # ear rape



# plugins
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
