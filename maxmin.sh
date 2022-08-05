read -p "Enter the number of elements: " n
echo "Enter the elements: "
i=0
for ((i=0; i<n; i++))
do
  read arr[$i]
done
max=`expr ${arr[0]}`
min=`expr ${arr[0]}`
for ((i=0; i<n; i++))#outer loop of selection sort
do
  if test ${arr[$i]} -ge $max #update max value
    then
      max=`expr ${arr[$i]}`
  fi
  if test ${arr[$i]} -le $min #update min value
    then
      min=`expr ${arr[$i]}`
  fi
done #min max found 
echo "The max value is: $max"
echo "The min value is: $min"
