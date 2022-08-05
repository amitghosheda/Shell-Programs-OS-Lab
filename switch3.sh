read -p "Enter a sentence: " str
words=$(echo "$str" | wc -w)
chars=`echo "$str" | wc -c`
white=`echo $str | tr -c -d " \t" | wc -c`
special=`echo $str | tr -c -d "./\{}[]()@!#%^&*-+=" |wc -c`
echo -e "No. of \nwords = $words\ncharacters = $chars\nwhite spaces = $white\nspecial characters = $special"
