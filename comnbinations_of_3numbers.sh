read -p "Enter a three digit no._  " n
echo "the permutations are:"

for ((i=1; i<4; i++))
do
  a=`echo $n | cut -c $i`
  # echo  "i=$i"
  for ((j=1; j<4; j++))
  do
    b=`echo $n | cut -c $j`
    # echo  "j=$j"
    for ((k=1; k<4; k++))
echo "the permutations are:"

for ((i=1; i<4; i++))
do
  a=`echo $n | cut -c $i`
  # e    do
      c=`echo $n | cut -c $k`
      if [ $i != $j ] && [ $i != $k ] && [ $j != $k ]
     echo "the permutations are:"

for ((i=1; i<4; i++))
do
  a=`echo $n | cut -c $i`
  # e then
	echo "$a$b$c"
      fi
    done
  done
done
