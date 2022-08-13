echo -e "Enter '1' check active users\nEnter '2' Display some lines from some file\nEnter '3' update access time of some file\n"
read -p "Enter your choice : " choice
case $choice in
  1) w;;
  2) read -p "Enter the file name : " filename
  read -p "Enter the no. of lines to be displayed from top : " number
  head -$number $filename;;
  3) read -p "Enter the file name : " filename
  touch -a $filename;;
  *) echo "Invalid Option"
esac
