# colors - these definitions borrowed from powerline,
# which borrowed from vim
set darkblue 0087af
set darkestred 5f0000
set gray2 303030
set gray4 585858
set gray9 bcbcbc

function format_username
	printf '%s%s %s %s%s' (set_color -b $darkblue) (set_color -o white) (whoami) (set_color $darkblue) (set_color -b $gray4)
end

function format_path
	printf '%s%s %s ' (set_color -b $gray4) (set_color $gray9) (prompt_pwd | sed -e 's,/,  ,g')
end

function format_branch
	test (which git); or return
	set branch (git rev-parse --abbrev-ref HEAD 2>/dev/null)
	if test $status -eq 0
		printf "%s%s%s%s  $branch " (set_color $gray2) (set_color -b $gray2) (set_color $gray9) (set_color -b $gray2)
	end
end

function format_exit_status
	set exitstatus $status
	if test $exitstatus -ne 0
		printf "%s%s %s$exitstatus " (set_color $darkestred) (set_color -b $darkestred) (set_color -o white)
	end
end

function prompt_terminator
	printf '%s%s ' (set_color -b normal) (set_color $gray4)
end

function right_prompt_terminator
	printf "%s%s " (set_color $gray2) (set_color -b $gray2)
end

function fish_prompt
	printf '%s%s%s' (format_username) (format_path) (prompt_terminator)
end

function fish_right_prompt
	printf "%s%s%s " (format_exit_status) (format_branch) (set_color normal)
end
