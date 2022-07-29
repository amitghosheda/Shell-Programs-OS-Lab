echo "Enter Subject 1"
read a
echo "Enter Subject 2"
read b
echo "Enter Subject 3"
read c
echo "Enter Subject 4"
read d
echo "Enter Subject 5"
read e
sum=`expr $a + $b + $c + $d + $e`
echo "Total " $sum
average=sum/5
