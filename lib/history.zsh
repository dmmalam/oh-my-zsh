## Command history configuration
HISTFILE=$HOME/.zsh/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt	hist_verify				\
 		inc_append_history		\
 		extended_history		\
 		hist_expire_dups_first	\
		hist_ignore_dups		\
		share_history		
