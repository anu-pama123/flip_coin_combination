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
count_of_head=0
count_of_tail=0
for((i=1;i<=num;i++))
do
if [ "${dictionary[i]}" = "HEAD" ]
then
(( count_of_head++ ))
elif [ "${dictionary[i]}" = "TAIL" ]
then
(( count_of_tail++ ))
fi
done
echo "Number of HEAD is = "$count_of_head 
echo "Number of TAIL is = "$count_of_tail
if [ $count_of_head -gt $count_of_tail ]
then
percentage1=$(( $count_of_head*100/$num ))
echo "HEAD is the winner and winning percentage is = "$percentage1 "%"
else
percentage2=$(( $count_of_tail*100/$num ))
echo "TAIL is the winner and winning percentage is = "$percentage2 "%"
fi
esac
