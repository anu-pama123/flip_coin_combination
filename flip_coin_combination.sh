read -p "Enter the number of times you want to flip the coin " num 
read -p "Enter your choice " choice

case $choice in

2)  for((i=1;i<=num;i++))
do
coin1=$(($RANDOM%2))
coin2=$(($RANDOM%2))
if [ $coin1 -eq 1 ] && [ $coin2 -eq 1 ]
then 
dictionary[$i]="HH"
elif [ $coin1 -eq 0 ] && [ $coin2 -eq 0 ]
then
dictionary[$i]="TT"
elif [ $coin1 -eq 1 ] && [ $coin2 -eq 0 ]
then
dictionary[$i]="HT"
elif [ $coin1 -eq 0 ] && [ $coin2 -eq 1 ]
then
dictionary[$i]="TH"
fi
done
echo ${dictionary[@]}

count=1
no_of_HH=0
no_of_TT=0
no_of_HT=0
no_of_TH=0
while [ $count -le $num ]
do
if [ ${dictionary[$count]} == "HH" ]
then
((no_of_HH++))
elif [ ${dictionary[$count]} == "TT" ]
then
((no_of_TT++))
elif [ ${dictionary[$count]} == "HT" ]
then
((no_of_HT++))
elif [ ${dictionary[$count]} == "TH" ]
then
((no_of_TH++))

fi
((count++))
done
echo "Number of HH is :  "$no_of_HH
echo "Number of TT is :  "$no_of_TT
echo "Number of HT is :  "$no_of_HT
echo "Number of TH is :  "$no_of_TH
number[0]="$no_of_HH"
number[1]="$no_of_TT"
number[2]="$no_of_HT"
number[3]="$no_of_TH"
#echo ${number[@]}
max=${number[0]}
for((i=1;i<4;i++))
do
if [ ${number[i]} -gt $max ]
then
max=${number[i]}
fi
done
percentage=$(($max*100/$num))
echo "$max  is the winner and winning percentage is = "$percentage"%"
esac
