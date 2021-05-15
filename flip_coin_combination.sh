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
3)  for((i=1;i<=num;i++))
do
coin1=$(($RANDOM%2))
coin2=$(($RANDOM%2))
coin3=$(($RANDOM%2))
if [ $coin1 -eq 0 ] && [ $coin2 -eq 0 ] && [ $coin3 -eq 0 ]
then 
dictionary[$i]="TTT"
elif [ $coin1 -eq 0 ] && [ $coin2 -eq 0 ] && [ $coin3 -eq 1 ]
then
dictionary[$i]="TTH"
elif [ $coin1 -eq 0 ] && [ $coin2 -eq 1 ] && [ $coin3 -eq 0 ]
then
dictionary[$i]="THT"
elif [ $coin1 -eq 0 ] && [ $coin2 -eq 1 ] && [ $coin3 -eq 1 ]
then
dictionary[$i]="THH"
elif [ $coin1 -eq 1 ] && [ $coin2 -eq 0 ] && [ $coin3 -eq 0 ]
then
dictionary[$i]="HTT"
elif [ $coin1 -eq 1 ] && [ $coin2 -eq 0 ] && [ $coin3 -eq 1 ]
then
dictionary[$i]="HTH"
elif [ $coin1 -eq 1 ] && [ $coin2 -eq 1 ] && [ $coin3 -eq 0 ]
then
dictionary[$i]="HHT"
elif [ $coin1 -eq 1 ] && [ $coin2 -eq 1 ] && [ $coin3 -eq 1 ]
then
dictionary[$i]="HHH"
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
no_of_TTT=0
no_of_TTH=0
no_of_THT=0
no_of_THH=0
no_of_HTT=0
no_of_HTH=0
no_of_HHT=0
no_of_HHH=0
while [ $count -le $num ]
do
if [ ${dictionary[count]} == "TTT" ]
then
((no_of_TTT++))
elif [ ${dictionary[count]} == "TTH" ]
then
((no_of_TTH++))
elif [ ${dictionary[count]} == "THT" ]
then
((no_of_THT++))
elif [ ${dictionary[count]} == "THH" ]
then
((no_of_THH++))
elif [ ${dictionary[count]} == "HTT" ]
then
((no_of_HTT++))
elif [ ${dictionary[count]} == "HTH" ]
then
((no_of_HTH++))
elif [ ${dictionary[count]} == "HHT" ]
then
((no_of_HHT++))
elif [ ${dictionary[count]} == "HHH" ]
then
((no_of_HHH++))
fi
((count++))
done
echo "Number of TTT is :  "$no_of_TTT
echo "Number of TTH is :  "$no_of_TTH
echo "Number of THT is :  "$no_of_THT
echo "Number of THH is :  "$no_of_THH
echo "Number of HTT is :  "$no_of_HTT
echo "Number of HTH is :  "$no_of_HTH
echo "Number of HHT is :  "$no_of_HHT
echo "Number of HHH is :  "$no_of_HHH
number[0]="$no_of_TTT"
number[1]="$no_of_TTH"
number[2]="$no_of_THT"
number[3]="$no_of_THH"
number[4]="$no_of_HTT"
number[5]="$no_of_HTH"
number[6]="$no_of_HHT"
number[7]="$no_of_HHH"
#echo ${number[@]}
max=${number[0]}
for((i=0;i<8;i++))
do
if [ ${number[i]} -gt $max ]
then
max=${number[i]}
fi
done
percentage=$(($max*100/$num))
echo "$max  is the winner and winning percentage is = "$percentage"%"
esac
