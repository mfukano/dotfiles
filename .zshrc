# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# use hyphen-insensitive completion. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# export MANPATH="/usr/local/man:$MANPATH"
export PATH="$HOME/bin:/usr/local/bin:$HOME/.rbenv/bin:$HOME/.rbenv/shims/:$PATH"

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'
export GIT_EDITOR='vim'
export DEFAULT_USER="$(whoami)"
alias workspace='cd ~/workspace'
alias cls='clear;ls'
alias bi='bundle install --binstubs .bundle/bin'
alias clsa='clear;ls -a'
alias lsa='ls -lah'
alias killrails='rm ~/**/tmp/pids/server.pid; sudo lsof -iTCP -sTCP:LISTEN -P | grep :3000'
alias killmail='sudo lsof -iTCP -sTCP:LISTEN -P | grep :1080; sudo lsof -iTCP -sTCP:LISTEN -P | grep :1025'
eval "$(rbenv init -)"
alias zozi='cd ~/workspace/zozi'
alias cms='cd ~/workspace/cms'
alias chef='cd ~/workspace/chef'
alias comfy='cd ~/workspace/gems/comfortable-mexican-sofa'
alias fortress='cd ~/workspace/cms-fortress'
alias wordpress='cd ~/workspace/wordpress-heroku'
alias sitebuilder='cd ~/workspace/sitebuilder'
alias comfy='cd ~/workspace/gems/comfortable-mexican-sofa'
alias fortress='cd ~/workspace/gems/cms-fortress'
alias sr='spring rails s'
alias sc='spring rails c'
alias g='git'
alias rake='noglob bundle exec rake'
alias zshup='source ~/.zshrc'
findfile() {
  find . -name "*$1*"
}
alias ff='findfile'
rgrep() {
  grep -Irn --include="*.${2-*}" --exclude={\*.min.js,\*.log,\*.cache} "$1" .
}
alias gg='rgrep'
workspace
