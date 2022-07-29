echo -e "1. Merging the contents of two files  \n2. Searching a pattern from a file"
echo "Enter your choice: 1 or 2"
read i
case $i in
1)cat hello.txt world.txt >> file.txt
echo "Task Done";;

2)grep "ad" file.txt;; 
esac
