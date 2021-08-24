# Set up Homebrew paths if necessary
if test -x "/opt/homebrew/bin/brew"
	eval (/opt/homebrew/bin/brew shellenv)
end

# PATH needs to be set up before any paths are called,
# because Tiger doesn't include /usr/local/bin in the
# default PATH.
for p in /usr/local/sbin /usr/local/bin
	set PATH $p $PATH
end

if test -x $HOME/.cargo/bin
	set PATH $HOME/.cargo/bin $PATH
end

if type --quiet "subl"
	if test -n "$SSH_CLIENT"
		set -x EDITOR "rsub"
		set -x HOMEBREW_EDITOR "rsub"
		set -x VISUAL "rsub -w"
	else
		set -x EDITOR "subl"
		set -x HOMEBREW_EDITOR "subl"
		set -x VISUAL "subl -w"
	end
else if type --quiet "code"
	set -x EDITOR "code"
	set -x HOMEBREW_EDITOR "code"
	set -x VISUAL "code -w"
end

set -xg NODE_PATH '/usr/local/lib/node_modules'

alias tigerbox "ssh -R 52698:localhost:52698 Byska.local"

# If run for a non-interactive shell, e.g. ssh, this can
# mess up scp, sftp, etc.
if status --is-interactive; and type --quiet fortune
	fortune
end

# Add extra settings just for work that I can't push
# to GitHub
if test -f ~/.config/fish/work.fish
	source ~/.config/fish/work.fish
end
