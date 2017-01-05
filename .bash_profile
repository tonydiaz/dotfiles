source ~/git-completion.bash

#Terminal function to display current branch
function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOR="\[\033[0m\]"

PS1="$GREEN\$:$NO_COLOR\w$YELLOW\$(parse_git_branch)$NO_COLOR\$ "
#PS1="$GREEN\u@\h$NO_COLOR:\w$YELLOW\$(parse_git_branch)$NO_COLOR\$ "

#Aliases
alias node_up="sudo n && sudo npm install -g npm"
alias node_sf="sudo n 4.3.0 && sudo npm install -g npm@v2.14.12"

alias hello="open http://giphy.com/gifs/hello-adele-xavier-dolan-aQXMVdhMErR3a"
