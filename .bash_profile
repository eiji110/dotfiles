if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if type "rbenv" > /dev/null 2>&1
then
    eval "$(rbenv init -)"
fi
# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
