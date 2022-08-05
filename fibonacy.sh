echo -n "Enter the number of terms to be shown: "
read n
a=0
b=1
for i in $(seq 1 $n)
do
  echo "$a"
  temp=$a
  a=$b
  b=$(($temp + $b))
done
