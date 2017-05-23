# If you come from bash you might have to change your $PATH.

export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=/Users/matfu/.oh-my-zsh
export LANG=en_US.UTF-8

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh
export EDITOR='vim'
export GIT_EDITOR='vim'
export SSH_KEY_PATH="~/.ssh/rsa_id"


alias workspace='cd ~/workspace'
alias ws=workspace
alias shitbox='cd ~/workspace/shitbox'
alias sb=shitbox
alias cls='clear;ls'
alias clsa='clear;ls -a'
alias lsa='ls -lah'
alias g='git'
alias zshup='source ~/.zshrc'
alias aa='atom -a'
alias an='atom -n'
alias ydl='youtube-dl -x --audio-format wav --audio-quality 0'
alias nlg='npm list -g --depth=0'

function up() {
  if [ -z $1 ]
  then
    cd ..
  else
    for ((i = 0; i < $1; i++))
     do
      cd ..
    done
  fi
}

# NODESCHOOL
alias ns='cd ~/workspace/nodeschool'
alias lym='learnyoumongo'
alias ew='expressworks'
alias was='web-audio-school'

findfile() {
  find . -name "*$1*"
}
alias ff='findfile'
alias gg='ag'


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
