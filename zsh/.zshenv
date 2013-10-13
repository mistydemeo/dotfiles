# Prefer rsub to subl for remote shells
if [ -n "$SSH_CLIENT" ]; then
	export EDITOR="rsub"
	export HOMEBREW_EDITOR="rsub"
	export VISUAL="rsub -w"

	typeset -A POWERLINE_CONFIG
	POWERLINE_CONFIG=('ext.shell.theme' 'default_leftonly')
else
	export HOMEBREW_EDITOR="subl"
	export EDITOR="subl"
	export VISUAL="subl -w"
fi

# for separate zpython installs
module_path=($module_path /usr/local/lib/zpython)

export PATH=/usr/local/opt/ruby/bin:/usr/local/share/python:/usr/local/bin:/usr/local/sbin:$PATH:/usr/local/texlive/2011/bin/x86_64-darwin
export NODE_PATH="/usr/local/lib/node_modules"

alias brwe="sl"

alias tigerbox="ssh -R 52698:localhost:52698 Byska.local"

# commandline CSV viewer, based on: http://chrisjean.com/2011/06/17/view-csv-data-from-the-command-line/
function csview () {
	<$1 sed -e 's/,,/, ,/g' | column -s, -t | less -#5 -N -S
}
