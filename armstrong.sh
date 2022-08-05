read -p "Enter a number_ " n
i=0
sum=0
length=`expr $(echo $n | wc -c) - 1`
while [ $i -lt $length ]
do
  digit=`echo $n | cut -c \`expr $length - $i \``
  # echo "The digit is $digit"
  let var=$digit**$length
  sum=`expr $var + $sum`
  i=`expr $i + 1`
  # echo "The sum is $sum"
done
if [ $sum -eq $n ]
then
  echo "$n is an armstrong no."
else
  echo "$n is not an armstrong no."
fi
