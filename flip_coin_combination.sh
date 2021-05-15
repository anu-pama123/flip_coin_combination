read -p "Enter the number of times you want to flip the coin " num 
read -p "Enter your choice " choice

case $choice in

1)  for((i=1;i<=num;i++))
do
coin=$(($RANDOM%2))
if [ $coin -eq 1 ] 
then 
dictionary[$i]="HEAD"
else
dictionary[$i]="TAIL"
fi
done
echo ${dictionary[@]}
esac
