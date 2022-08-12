echo -e "Enter 1 --> Display File\n2-->Display a particular entry\n3-->Delete a specific entry\n4-->Add a new entry\n5-->Update a specific entry\n6-->Exit\n_______________________________________\n"
read -p "Enter your choice: " choice
filename=datarecord.txt
case $choice in
  1) echo -e "___________________________\nThe whole $filename is\n\n"
  cat $filename;;
  
  2) echo "A specific entry will be displayed"
  read -p "Enter the roll no. of the entry to be displayed_ " roll
  entry=`grep -e ^$roll $filename`
  name=`echo $entry | cut -d" " -f2`
  dept=`echo $entry | cut -d" " -f3`
  hod=`echo $entry | cut -d" " -f4`
  echo -e "\n______________________\nRoll: $roll \nName: $name \nDept: $dept \nHod: $hod\n";;
  
  3) echo "An entry will be deleted"
  read -p "Enter the roll no. of the entry to be deleted_ " roll
  grep -v ^$roll $filename > temp.txt
  cat temp.txt > $filename
  rm temp.txt
  echo "Entry for roll= $roll has been deleted";;
  
  4) echo "Add a new entry"
  read -p "Enter the <roll><space><name><space><dept><space><hod>" entry
  echo $entry >> $filename
  echo "Entry added";;
  
  5) echo "An entry will be updated"
  read -p "Enter the roll no. of the entry to be updated_ " roll
  line_of_roll=`grep -n ^$roll $filename | cut -d":" -f 1`
  no_of_lines=`wc -l $filename | cut -d " " -f 1`
  head -`expr $line_of_roll - 1` $filename >temp.txt
  echo "Enter the updated entry in following format"
  read -p "Enter the <roll> <name> <dept> <hod>" entry
  echo $entry >>temp.txt
  tail -`expr $no_of_lines - $line_of_roll ` $filename >>temp.txt
  cat temp.txt > $filename
  rm temp.txt;;
  
  6) exit 1
  ;;
  
  *) echo "Invalid entry";;
esac
