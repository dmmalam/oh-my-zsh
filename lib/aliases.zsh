#!/bin/zsh

# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

alias ss='thin --stats "/thin/stats" start'
alias sg='ruby script/generate'
alias sd='ruby script/destroy'
alias sp='ruby script/plugin'
alias ssp='ruby script/spec'
alias rdbm='rake db:migrate'
alias sc='ruby script/console'
alias sd='ruby script/server --debugger'
alias devlog='tail -f log/development.log'

# Basic directory operations
alias .='pwd'
alias ...='cd ../..'
alias -- -='cd -'

# Super user
alias _='sudo'
alias ss='sudo su -'

#alias g='grep -in'

# Git related
alias g='git'
alias gst='git status'
alias gl='git pull'
alias gup='git fetch && git rebase'
alias gp='git push'
alias gd='git diff | mate'
alias gdv='git diff -w "$@" | vim -R -'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'
alias gba='git branch -a'
alias gdb='git branch -d'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'

# Show history
alias history='fc -l 1'

# List directory contents
alias ls='ls -FG'
alias la='ls -lAG'
alias l=ls
alias ll='ls -@AFGhle'
alias sl=ls # often screw this up

alias sgem='sudo gem'

# File Operations
alias rm='rm -ivd'
alias rmd='rm -ivr'

alias cp='cp -vRpi'

alias mv='mv -vi'

alias chmod='chmos -v'

alias df='df -ahi'

alias ln='ln -iv'

alias mkdir='mkdir -vp'
alias md=mkdir
alias rd=rmdir

alias d='dirs -v'

alias ps='ps -af'
alias psa='ps -Af'

# Execute previous command with sudo prefix:
alias fu='sudo $( fc -ln -1)'

# Darwinports specific
#if [ -x $(which port) ]; then
    alias portup='sudo port -d selfupdate; sudo port -d upgrade installed'    
#fi


# Find ruby file
alias rfind='find . -name *.rb | xargs grep -n'
alias afind='ack-grep -il'

# Git and svn mix
alias git-svn-dcommit-push='git svn dcommit && git push github master:svntrunk'

# TextMate
alias et='mate . &'
alias ett='mate app config lib db public spec test Rakefile Capfile Todo &'
alias etp='mate app config lib db public spec test vendor/plugins vendor/gems Rakefile Capfile Todo &'
alias etts='mate app config lib db public script spec test vendor/plugins vendor/gems Rakefile Capfile Todo &'

# Editor Ruby file in TextMate
alias mr='mate CHANGELOG app config db lib public script spec test'