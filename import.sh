IFS=$'\n'
files=$(ls | egrep '(.txt)')
for i in $files; do
	created=$( GetFileInfo -d "$i" )
	dayone -d="$created" new < "$i"
done
unset IFS