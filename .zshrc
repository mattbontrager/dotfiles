export TERM="xterm-256color"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# auto use nvm (nvm use for dirs with .nvmrc files)
export NVM_AUTO_USE=true

# Path to your oh-my-zsh installation.
export ZSH="/Users/pbontrag/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# ZSH_TMUX_AUTOSTART='true'

POWERLEVEL9K_PROMPT_ON_NEWLINE='true'

POWERLEVEL9K_USER_ICON="\uF415"
POWERLEVEL9K_ROOT_ICON="#"
POWERLEVEL9K_SUDO_ICON=$'\uF09C'

POWERLEVEL9K_SHORTEN_DIR_LENGTH=4
POWERLEVEL9K_SHORTEN_DELIMITER=''
POWERLEVEL9K_SHORTEN_STRATEGY='truncate_from_right'

POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S}"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon ssh dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(node_version nodeenv nvm time)

POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

DEFAULT_USER="pbontrag"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # this loads nvm

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(git zsh-completions)
# Add wisely, as too many plugins slow down shell startup.
plugins=(bundler brew gem tmux zsh-z git vagrant zsh-completions zsh-nvm)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias nrb="npm run build"
alias nrt="npm run test"
alias nrl="npm run lint"
alias nrs="npm run start"
alias zshconfig="vim ~/.zshrc"
alias sourcezsh="source ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ll='ls -alFh'
alias proj='cd ~/Projects'
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias ctags="`brew --prefix`/bin/ctags"
export PATH="/usr/local/bin:/usr/local/opt/qt/bin:$PATH"
export PATH="/usr/local/lib/ruby/bin:$PATH"
export PATH="$HOME/.gem/ruby/2.6.0/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/Applications/MongoDB.app/Contents/Resources/Vendor/mongodb/bin:$PATH"
