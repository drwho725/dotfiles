function parse_git_branch --description 'Write out branch info'
  	set -l branch (git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')
  	set -l git_diff (git diff)

  	if test -n "$git_diff"
    	echo (set_color $fish_git_dirty_color)'['$branch(parse_git_dirty)
  	else
    	echo (set_color $fish_git_not_dirty_color)'['$branch(parse_git_dirty)
  	end
end