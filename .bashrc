# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

if [ -f ~/.bashrc_local ]; then
    . ~/.bashrc_local
fi

PATH=$PATH:~/local/bin:~/.composer/vendor/bin

# vim:shell
alias vimpath="echo ${VIM}"

# ll ls
if [ $(uname) = "Darwin" ]; then
    alias ll="ls -laG"
    alias ls="ls -G"
elif [ $(uname) = "Linux" ]; then
    alias ll="ls -la --color=auto"
    alias ls="ls --color=auto"
fi

# User specific aliases and functions
stty stop undef
