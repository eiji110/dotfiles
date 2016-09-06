if [ -e "${HOME}/.bashrc" ] ; then
    source "${HOME}/.bashrc"
fi
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
