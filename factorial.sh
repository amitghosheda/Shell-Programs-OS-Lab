echo -n "Enter a number: "
read n
fact=1
for i in $(seq 2 $n)
do
  fact=$((fact * i)) 
done
echo "the factorial of $n = $fact"
