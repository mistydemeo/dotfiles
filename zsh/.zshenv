# Prefer rsub to subl for remote shells
if [ -n "$SSH_CLIENT" ]; then
	export EDITOR="rsub"
	export VISUAL="rsub -w"
else
	export EDITOR="subl"
	export VISUAL="subl -w"
fi

export PATH=/usr/local/opt/ruby/bin:/usr/local/share/python:/usr/local/bin:/usr/local/sbin:$PATH:/usr/local/texlive/2011/bin/x86_64-darwin
export NODE_PATH="/usr/local/lib/node_modules"

alias brwe="sl"

alias tigerbox="ssh -R 52698:localhost:52698 192.168.0.104"

HOMEBREW="git@github.com:mxcl/homebrew.git"
FORKBREW="git@github.com:mistydemeo/homebrew.git"
