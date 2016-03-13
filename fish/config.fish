# Load custom settings for current OS
set PLATFORM_SPECIFIC_FILE ~/.config/fish/(uname -s).fish
if test -f $PLATFORM_SPECIFIC_FILE
   . $PLATFORM_SPECIFIC_FILE
end

# Used for non-synced, private settings
set SECRETS_FILE ~/.config/fish/secret.fish
if test -f $SECRETS_FILE
	. $SECRETS_FILE
end

set -x CLICOLOR 1

function parse_git_branch
	sh -c 'git branch --no-color 2> /dev/null' | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
end

function parse_svn_tag_or_branch
        sh -c 'svn info | grep "^URL:" | egrep -o "(tags|branches)/[^/]+|trunk" | egrep -o "[^/]+$"'
end

function parse_svn_revision
	sh -c 'svn info 2> /dev/null' | sed -n '/^Revision/p' | sed -e 's/^Revision: \(.*\)/\1/'
end

set -x VIRTUALFISH_HOME $HOME/Envs
set -g VIRTUALFISH_COMPAT_ALIASES
source $HOME/github/virtualfish/virtual.fish

function postactivate --on-event virtualenv_did_activate
        set postactivate "$VIRTUAL_ENV/bin/postactivate.fish"
        test -e $postactivate; and source $postactivate
end

source ~/.config/fish/settings.fish
source ~/.config/fish/prompt.fish

test -e ~/.iterm2_shell_integration.fish; and source ~/.iterm2_shell_integration.fish
