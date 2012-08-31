IFS=$'\n'
files=$(ls | egrep '(.txt)')
for i in $files; do
	#get original creation dates
	original=$( GetFileInfo -d "$i" )
	
	#change the creation date of the same file in the destination
	if [ -e "/Users/christophersu/Desktop/test/$i" ]; then
		SetFile -d "$original" "/Users/christophersu/Desktop/test/$i"
	fi
	
done
unset IFS