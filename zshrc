# Path to oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in $ZSH/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins to load? (plugins are found in $ZSH/plugins/)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git brew)

source $ZSH/oh-my-zsh.sh

# Customization

# Stuff before default $PATH:
PATH=$HOME/bin:$HOME/local/bin:/usr/local/sbin:/usr/local/bin:$PATH
# Stuff after default $PATH:
PATH=$PATH:/usr/local/lib/python2.7/site-packages # Stuff installed by PIP
PATH=$PATH:/usr/local/share/npm/bin # Stuff installed by NPM
PATH=$PATH:/Applications/android-sdk/platform-tools:/Applications/android-sdk/tools # Android SDK
export PATH=$PATH:$HOME/src/powerline/scripts/ # Powerline executable

export NODE_PATH=/usr/local/lib/node:/usr/local/lib/node_modules
export ANDROID_HOME=/Applications/android-sdk
export GOPATH=$HOME/Documents/programming/go

# Load RVM into a shell session.
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

# Load Tmuxinator into a shell session.
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

# Some variables
export EDITOR='mvim -v'
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

# Reuse old bash aliases
source $HOME/.bash_aliases
