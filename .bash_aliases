# export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

alias ll='ls -alh'
alias la='ls -A'
alias l='ls -CF'
alias python=python3

alias more='more -10 -d'
alias m='more -10 -d'
alias e='exit'
alias ..='cd ..'
alias md='mkdir'
alias du='du -sh'
alias s='source'

alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gd='git diff'
alias g++='g++ -std=c++11'
alias g++include='g++ -x c++ -v -E /dev/null'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

umask 002

export PATH=$HOME/go/bin:$HOME/Downloads/go/bin:$HOME/Downloads:$HOME/.local/bin:$PATH
