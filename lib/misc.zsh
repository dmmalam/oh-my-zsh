## smart urls
autoload -U url-quote-magic
zle -N self-insert url-quote-magic

## file rename magick
bindkey "^[m" copy-prev-shell-word

## jobs
setopt 	long_list_jobs	\
		auto_resume		\
		notify			\
		check_jobs

export LC_CTYPE=en_US.UTF-8
