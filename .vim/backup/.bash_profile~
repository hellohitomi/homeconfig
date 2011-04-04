# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

#RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.

#Gemdir
function gemdir {
    if [[ -z "$1" ]] ; then
        echo "gemdir expects a parameter, which should be a valid RVM Ruby selector"
    else
        rvm "$1"
        cd $(rvm gemdir)
        pwd
    fi
}
