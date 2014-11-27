# PATH needs to be set up before any paths are called,
# because Tiger doesn't include /usr/local/bin in the
# default PATH.
for p in /usr/local/sbin /usr/local/bin
	set PATH $p $PATH
end

# PATH should take priority over any duplicates that live here
set PATH $PATH /usr/local/texlive/2011/bin/x86_64-darwin

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
alias tamias='ssh -p 2200 -A -L 9999:localhost:9999 -L 8000:localhost:8000 -R 52698:localhost:52698 mdemeo@tamias.artefactual.com'

# If run for a non-interactive shell, e.g. ssh, this can
# mess up scp, sftp, etc.
if status --is-interactive
	fortune
end
