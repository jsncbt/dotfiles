# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="clean"
# ZSH_THEME="ultrastructure"
# ZSH_THEME="af-magic"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git history-substring-search command-not-found zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# HomeBrew Path
HOMEBREWPATH="/usr/local/bin"

# Set Java Home
JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home"

# Increase Maven heap
JREBEL_HOME="$HOME/dev/jrebel"
export MAVEN_OPTS="-Xmx512m -javaagent:$JREBEL_HOME/jrebel.jar -Drebel.mustache_plugin=true -Drebel.log=true $MAVEN_OPTS"

# Setup path
export PATH="$HOMEBREWPATH:/usr/bin:/bin:/usr/sbin:/sbin:$JAVA_HOME/bin"

# Add my own bin
export PATH="$PATH:$HOME/.bin"

# Eclim
export PATH="$PATH:/Applications/eclipse"

# Man path
export MANPATH="/usr/local/share/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# do not ad these to my history
export HISTIGNORE='clear:history'
# ignore duplicate commands(ignoredups)
# ignore leading spaced commands (ignorespace)
export HISTCONTROL='ignoreboth'

export GIT_PS1_SHOWDIRTYSTATE=true

# Source other usefull stuff, alias, functions

source ~/.aliases
source ~/.functions

# source /usr/local/bin/virtualenvwrapper.sh
# export PYTHONPATH=:/Users/marcos/pylib
# export WORKON_HOME=~/workspace/python/environments
unalias gm
# source ~/.wotdot/zsh/zshrc


# set vim mode
bindkey -v
