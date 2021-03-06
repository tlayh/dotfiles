zmodload zsh/zprof

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="pygmalion"
#ZSH_THEME="tjkirch"
#ZSH_THEME="af-magic"
#ZSH_THEME="fino"
ZSH_THEME=powerlevel10k/powerlevel10k

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias l="ls -lah"
alias lt="tree -L 2"
alias cdp="cd -P"
alias grep="grep --color"
alias svndiff="svn diff | colordiff"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(gitfast brew wd mvn atom composer zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
source $(brew --prefix php-version)/php-version.sh

export GOPATH=$HOME/Projects/GO:$HOME/Projects/aoe:$HOME/virtualgo/flamingo
export GOROOT=/usr/local/Cellar/go/1.15.6/libexec

export PATH=$HOME/dotfiles/iterm:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/Users/thomas.layh/Projects/GO/bin:$PATH

# export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

setTerminalText () {
    # echo works in bash & zsh
    local mode=$1 ; shift
    echo -ne "\033]$mode;$@\007"
}

zstyle ':completion:*' special-dirs ..

# change some directory colors:
export LS_COLORS="${LS_COLORS}tw=30;00:ow=32;32:"

# VCODE
function code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $*; }

command -v vg >/dev/null 2>&1 && eval "$(vg eval --shell zsh)"

source ~/dotfiles/.iterm2_shell_integration.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# nvm stuff
#export NVM_DIR="$HOME/.nvm"
#  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
#  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

zprof
