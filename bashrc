
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}: ${PWD/#$HOME/~}\007"'
export PS1="[\u@\h \W]\\$ "

export VAGRANT_HOME=/vm/.vagrant.d

command -v vg >/dev/null 2>&1 && eval "$(vg eval --shell bash)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
