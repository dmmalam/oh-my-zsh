# add gem completion function to path
fpath=(~/.rvm/scripts/zsh/Completion $fpath)
autoload -U compinit
compinit -i
