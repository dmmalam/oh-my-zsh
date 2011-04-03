# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

# Basic directory operations
alias ...='cd ../..'
alias -- -='cd -'

# Super user
alias _='sudo'

#alias g='grep -in'

# Show history
alias history='fc -l 1'

# List directory contents
alias ls='ls -FG'
alias la='ls -AFG'
alias l=ls
alias ll='ls -@AFGhle'
alias sl=ls # often screw this up

# File Operations
alias rm='rm -vd'

alias rmd='rm -ivr'

alias cp='cp -vRpi'

alias mv='mv -vi'

alias chmod='chmod -v'

alias df='df -ahi'

alias ln='ln -iv'

alias ps='ps -af'

alias psa='ps -Af'

# Execute previous command with sudo prefix:
alias fu='sudo $( fc -ln -1)'

alias afind='ack-grep -il'

alias x=extract
