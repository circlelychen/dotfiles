export WORKON_HOME=$HOME/.virtualenvs

# configure locale setting
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export GOPATH=$HOME/git/go
export CSIPATH=$GOPATH/src/htc.com/csi

# add /usr/local/bin
export PATH="/usr/local/bin:$PATH"

# add pyenv bin folder
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# $GOPATH/bin
export PATH="$GOPATH/bin:$PATH:"

# add google-cloud-sdk/bin bin into PATH
#export PATH="/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin:$PATH:"

export EDITOR=vim

alias ls='ls -G'
alias ll='ls -altG'
alias kc='kubectl'
alias kt='kubetail'
alias kx='kubectx'
alias nlp='cd ~/github/nlp/'

# alias for git 
alias gs='git status'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gcv='git commit --no-verify'
alias gd='git diff'

#alias csp='cd $CSIPATH'

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

GIT_PS1_SHOWDIRTYSTATE=true

PS1='\[\033[01m\][\[\033[01;34m\]\u@\h\[\033[00m\]\[\033[01m\] $(__git_ps1)] \[\033[01;32m\]\w\[\033[00m\]\n\[\033[01;34m\]$\[\033[00m\]> '

