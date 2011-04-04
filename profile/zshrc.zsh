# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.zsh/oh-my-zsh

#export PATH="/opt/local/bin/:/opt/local/sbin/:$PATH"

# Set to the name theme to load.
# Look in $ZSH/themes/
export ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"


source ~/.zsh/zshrc.zsh

# Which plugins would you like to load? (plugins can be found in $ZSH/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(bundler cap gem git github lighthouse macports most mysql-macports natural-4000 osx perl rails3 ruby rvn svn textmate)

source $ZSH/oh-my-zsh.zsh

# Customize to your needs...
