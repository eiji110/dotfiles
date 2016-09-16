if [ -e "${HOME}/.bashrc" ] ; then
    source "${HOME}/.bashrc"
fi
export PATH="$HOME/.rbenv/bin:$PATH"
if type "rbenv" > /dev/null 2>&1
then
    eval "$(rbenv init -)"
fi
