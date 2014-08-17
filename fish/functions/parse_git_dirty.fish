function parse_git_dirty --description 'Write out git status'
	set -l stat (git status 2>&1 | tee)
	set -l dirty (echo -n $stat 2> /dev/null | grep "modified:" > /dev/null; echo "$status")
	set -l untracked (echo -n $stat 2> /dev/null | grep "Untracked files" > /dev/null; echo "$status")
    set -l ahead (echo -n $stat 2> /dev/null | grep "Your branch is ahead of" > /dev/null; echo "$status")
    set -l newfile (echo -n $stat 2> /dev/null | grep "new file:" > /dev/null; echo "$status")
    set -l renamed (echo -n $stat 2> /dev/null | grep "renamed:" > /dev/null; echo "$status")
    set -l deleted (echo -n $stat 2> /dev/null | grep "deleted:" > /dev/null; echo "$status")
	if [ $renamed = "0" ];
		echo -ne ">"
    end
    if [ $ahead = "0" ];
    	echo -ne "*"
    end
    if [ $newfile = "0" ];
    	echo -ne "+"
    end
    if [ $untracked = "0" ];
    	echo -ne "?"
    end
    if [ $deleted = "0" ];
    	echo -ne "x"
    end
    if [ $dirty = "0" ];
    	echo -ne "!"
    end
    echo "]"
end