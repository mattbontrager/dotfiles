export PATH=$HOME/bin:/usr/local/bin:$PATH
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
ZSH_THEME=cobalt2

# ZSH_TMUX_AUTOSTART='true'

DEFAULT_USER="pbontrag"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

ZSH_DISABLE_COMPFIX=true

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # this loads nvm

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(git zsh-completions)
# Add wisely, as too many plugins slow down shell startup.
plugins=(brew bundler vi-mode zsh-autosuggestions gem z git zsh-completions zsh-nvm rbenv)

source $ZSH/oh-my-zsh.sh

# User configuration
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
eval "$(rbenv init -)"

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias lasttag='git describe --abbrev=0 --tags'
alias resetrig='python3 ./pivi-rig.py -r'
alias rl='sshpass -p "jlr173" ssh root@192.168.3.1'
alias subl='open -a Sublime\ Text.app'
alias nrb="npm run build"
alias nrd="npm run deploy"
alias clown='tmux a -t 🤡'
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
export LDFLAGS="-L/usr/local/opt/qt/lib"
export CPPFLAGS="-I/usr/local/opt/qt/include"
export PKG_CONFIG_PATH="/usr/local/opt/qt/lib/pkgconfig"

export PYENV_ROOT=”/Users/pbontrag/.pyenv”
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

eval "$(direnv hook zsh)"
autoload -Uz compinit && compinit
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/pbontrag/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/pbontrag/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/pbontrag/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/pbontrag/google-cloud-sdk/completion.zsh.inc'; fi
