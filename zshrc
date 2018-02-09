# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="pygmalion"
#ZSH_THEME="tjkirch"
#ZSH_THEME="af-magic"
#ZSH_THEME="fino"

#to try later
#ZSH_THEME="muse"
#ZSH_THEME="steeef"


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
plugins=(gitfast vagrant ruby gem rvm npm brew symfony2 wd mvn atom composer zsh-autosuggestions docker)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# export ANDROID_HOME=/Users/tlayh/Projects/android/adt-bundle-mac-x86_64/sdk

export GOPATH=/Users/thomas.layh/Projects/GO
export GOROOT=/usr/local/Cellar/go/1.9.2/libexec
export PATH=/Users/tlayh/dotfiles/iterm:/opt/local/bin:/opt/local/sbin:/usr/local/bin:$GOPATH/bin:$PATH

export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

export VAGRANT_HOME=/vm/.vagrant.d

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
