# Changing/making/removing directory
setopt 	auto_cd				\
		cdable_vars			\
		no_chase_dots		\
		no_chase_links		\
		pushd_ignore_dups	\
		no_pushd_minus		\
		no_pushd_silent		\
		no_pushd_to_home	\
		auto_name_dirs		\
 		auto_pushd			\
		
		

alias ..='cd ..'
alias cd..='cd ..'
alias cd...='cd ../..'
alias cd....='cd ../../..'
alias cd.....='cd ../../../..'
alias cd/='cd /'

alias 1='cd -'
alias 2='cd +2'
alias 3='cd +3'
alias 4='cd +4'
alias 5='cd +5'
alias 6='cd +6'
alias 7='cd +7'
alias 8='cd +8'
alias 9='cd +9'

cd () {
  if   [[ "x$*" == "x..." ]]; then
    cd ../..
  elif [[ "x$*" == "x...." ]]; then
    cd ../../..
  elif [[ "x$*" == "x....." ]]; then
    cd ../../..
  elif [[ "x$*" == "x......" ]]; then
    cd ../../../..
  else
    builtin cd "$@"
  fi
}
