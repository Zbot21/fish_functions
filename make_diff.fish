function make_diff
	set filename (git log | grep -A4 commit | head -n5 | tail -n1 | awk '{print $1}').txt
	echo Saving to $filename
	git diff (git log | grep commit | awk '{print $2}' | head -n1 | tr '\n' '~') > $filename
end
