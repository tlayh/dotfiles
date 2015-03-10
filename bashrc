
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}: ${PWD/#$HOME/~}\007"'
export PS1="[\u@\h \W]\\$ "
