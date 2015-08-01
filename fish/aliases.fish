function mb
  git merge $argv[1]; and git push; and git branch -d $argv[1]; and git push origin --delete $argv[1]
end
complete -f -c mb -a '(__fish_git_branches)' -d 'Merge and delete branch'
