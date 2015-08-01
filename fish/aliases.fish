function mb
  git merge $argv[1]; and git push; and git branch -d $argv[1]; and git push origin --delete $argv[1]
end
complete -f -c mb -a "(git branch --no-color -a ^/dev/null | sgrep -v ' -> ' | sed -e 's/^..//' -e 's/^remotes\///')" -d 'Merge and delete branch'
