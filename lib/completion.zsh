# Completion
setopt 	always_to_end		\
		auto_list			\
		auto_menu			\
		auto_name_dirs		\
		no_complete_aliases	\
		complete_in_word	\
		glob_complete		\
		list_packed			\
		no_list_rows_first	\

WORDCHARS=''

autoload -U compinit
compinit

zmodload -i zsh/complist

## case-insensitive (all),partial-word and then substring completion
if [ "x$CASE_SENSITIVE" = "xtrue" ]; then
  zstyle ':completion:*' matcher-list 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
  unset CASE_SENSITIVE
else
  zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
fi

zstyle ':completion:*' list-colors ''
zstyle ':completion:*' hosts $( sed 's/[, ].*$//' $HOME/.ssh/known_hosts )

unsetopt MENU_COMPLETE

# should this be in keybindings?
bindkey -M menuselect '^o' accept-and-infer-next-history

zstyle ':completion:*:*:*:*:*' menu yes select
# zstyle ':completion:*:*:*:*:processes' force-list always

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'
zstyle ':completion:*:*:*:*:processes' command "ps -u `whoami` -o pid,user,comm -w -w"
zstyle ':completion:*:*:(ssh|scp):*:*' hosts `sed 's/^\([^ ,]*\).*$/\1/' ~/.ssh/known_hosts`

# Complete on history
# zstyle ':completion:*:history-words' stop yes
# zstyle ':completion:*:history-words' remove-all-dups yes
# zstyle ':completion:*:history-words' list false
# zstyle ':completion:*:history-words' menu yes
