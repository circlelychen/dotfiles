export WORKON_HOME=$HOME/.virtualenvs

# configure locale setting
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Homebrew
export PATH="/opt/homebrew/bin:$PATH:"

# add /usr/local/bin
export PATH="/usr/local/bin:$PATH"

# add pyenv bin folder
# if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
# if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# $GOPATH/bin
export GOPATH="/usr/local/go"
export PATH="$GOPATH/bin:$PATH"

# add google-cloud-sdk/bin bin into PATH
# export PATH="/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin:$PATH:"

# add $HOME/bin
export PATH="$HOME/bin:$PATH"

# add $HOME/.poetry/bin
# export PATH="$HOME/.poetry/bin:$PATH"

export EDITOR=vim

alias ls='ls -G'
alias ll='ls -altG'
alias kc='kubectl'
alias kt='kubetail'
alias kx='kubectx'
alias nlp='cd ~/gitlab/nlp/'

# alias for git
alias gs='git status'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gcv='git commit --no-verify'
alias gd='git diff'

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# Source the git bash completion file
if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi

# Source the git prompt file
if [ -f ~/.git-prompt.sh ]; then
    source ~/.git-prompt.sh
    GIT_PS1_SHOWDIRTYSTATE=true
    GIT_PS1_SHOWSTASHSTATE=true
    GIT_PS1_SHOWUPSTREAM="auto"
    PS1='\[\033[01m\][\[\033[01;34m\]\u@\h\[\033[00m\]\[\033[01m\] $(__git_ps1)] \[\033[01;32m\]\w\[\033[00m\]\n\[\033[01;34m\]$\[\033[00m\]> '
fi

#export NVM_DIR="/Users/circlelychen/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
