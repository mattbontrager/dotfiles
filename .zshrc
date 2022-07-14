export PATH=$HOME/bin:/usr/local/bin:$PATH
export TERM="xterm-256color"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export HOMEBREW_NO_INSTALL_CLEANUP=TRUE

source $(brew --prefix)/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

antigen bundle git
antigen bundle zsh-users/zsh-autosuggestions

# Load the theme.
# antigen theme cobalt2

# Tell Antigen that you're done.
antigen apply

# export ZSH_DISABLE_COMPFIX=true
# Path to your oh-my-zsh installation.
export ZSH="/Users/mrose4/.oh-my-zsh"

# User configuration
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

export EDITOR='vim'

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="cobalt2"

# auto use nvm (nvm use for dirs with .nvmrc files)
export NVM_AUTO_USE=true

# ZSH_TMUX_AUTOSTART='true'

DEFAULT_USER="mrose4"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder


autoload -Uz compinit
if type brew &>/dev/null; then
	FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
	compinit -i # Ignore insecure directories
else
	compinit
fi


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # this loads nvm

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(git zsh-completions)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-autosuggestions vi-mode z git zsh-completions)

# autoload -Uz compinit
# if [ $(date +'%j') != $(stat -f '%Sm' -t '%j' ~/.zcompdump) ];
# then
# 	compinit
# else
# 	compinit -C
# fi
# for dump in ~/.zcompdump(N.mh+24); do
#   compinit
# done
# compinit -C

source $ZSH/oh-my-zsh.sh

# eval "$(rbenv init -)"

rbenv() {
	eval "$(command rbenv init -)"
	rbenv "$@"
}

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias dc='docker compose'
alias gc='gcloud'
alias vu='vagrant up'
alias vs='vagrant status'
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
alias ll='ls -alFh'
alias proj='cd ~/Projects'
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias ctags="`brew --prefix`/bin/ctags"
alias reload!='exec "$SHELL" -l'


if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# eval "$(direnv hook zsh)"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/Users/mrose4/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/mrose4/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
# if [ -f '/Users/mrose4/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/mrose4/google-cloud-sdk/completion.zsh.inc'; fi

# time shell loading time
timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}

# bun completions
[ -s "/Users/mrose4/.bun/_bun" ] && source "/Users/mrose4/.bun/_bun"

# Bun
export BUN_INSTALL="/Users/mrose4/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
