 read -p "Enter File name: " filename #Read a file from command line. 
if test -f "$filename";
then
    echo "$filename has found." #Check whether it exists.
else
    echo "$filename has not been found"
	touch $filename
	echo "File created succefully" #If it does not create it.
fi
ls -l $filename #read file permission
