echo "Enter First Number:"
read first
echo "Enter Second number:"
read second
echo "Enter the Following Option:"
echo -e "Enter '1' Addition \nEnter '2' Substraction \nEnter '3' multiplication \nEnter '4' Divison :"
echo "Enter your choice :"
read i
case $i in
1)echo "$first + $second" | bc ;;

2)echo "$first - $second" | bc ;;

3)echo "$first * $second" | bc ;;

4)echo "scale=3; $first / $second" | bc ;;

*)echo "You gave a Wrong input" ;;
esac
