# PATH needs to be set up before any paths are called,
# because Tiger doesn't include /usr/local/bin in the
# default PATH.
for p in /usr/local/opt/ruby/bin /usr/local/sbin /usr/local/bin
	set PATH $p $PATH
end

# PATH should take priority over any duplicates that live here
set PATH $PATH /usr/local/texlive/2011/bin/x86_64-darwin

fortune

if test -n "$SSH_CLIENT"
	set -x EDITOR "rsub"
	set -x HOMEBREW_EDITOR "rsub"
	set -x VISUAL "rsub -w"
else
	set -x EDITOR "subl"
	set -x HOMEBREW_EDITOR "subl"
	set -x VISUAL "subl -w"
end

set -xg NODE_PATH '/usr/local/lib/node_modules'

alias brwe "sl"
alias tigerbox "ssh -R 52698:localhost:52698 Byska.local"
