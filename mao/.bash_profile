# /etc/skel/.bash_profile

# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
[[ -f ~/.bashrc ]] && . ~/.bashrc

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
