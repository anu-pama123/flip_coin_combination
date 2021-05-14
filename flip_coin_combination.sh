read -p "Enter the number of times you want to flip the coin " num 
read -p "Enter your choice " choice

case $choice in

1)  for((i=1;i<=num;i++))
do
randomnumber=$(($RANDOM%2))
if [ $randomnumber -eq 1 ]
then 
dictionary[$i]="HEAD"
else
dictionary[$i]="TAIL"
fi
done 
echo ${dictionary[@]}
count=1
no_of_head=0
no_of_tail=0
while [ $count -le $num ]
do
if [ ${dictionary[$count]} == "HEAD" ]
then
((no_of_head++))
fi
if [ ${dictionary[$count]} == "TAIL" ]
then
((no_of_tail++))
fi
((count++))
done
echo "Number of head is :  "$no_of_head
echo "Number of tail is :  "$no_of_tail
if [ $no_of_head -gt $no_of_tail ]
then
perc1=$(($no_of_head*100/$num))
echo "Head is the winner and winning percentage is = "$perc1"%"
else
perc2=$(($no_of_tail*100/$num))
echo "Tail is the winner and winning percentage is = "$perc2"%"
fi
esac

