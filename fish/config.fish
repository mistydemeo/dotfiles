# Load custom settings for current OS
set PLATFORM_SPECIFIC_FILE ~/.config/fish/(uname -s).fish
if test -f $PLATFORM_SPECIFIC_FILE
   . $PLATFORM_SPECIFIC_FILE
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

source ~/.config/fish/settings.fish
source ~/.config/fish/prompt.fish
