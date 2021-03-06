#-*- shell-script -*-

export PATH=$PATH:~/bin:~/.cabal/bin
export EDITOR="emacsclient"
export VISUAL="emacsclient"

#Use keychain to manage SSH.
eval $(keychain --eval --agents ssh -Q --quiet id_rsa)

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	exec startx
fi

[[ -x /usr/bin/unicode_start && $(tty) = /dev/tty? ]] && unicode_start

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
