read -p "Enter the number of times you want to flip the coin " num 
for((i=1;i<=num;i++))
do
coin=$(($RANDOM%2))
if [ $coin -eq 1 ] 
then 
echo "HEAD"
else
echo "TAIL"
fi
done

