#!/bin/bash -x
initial_amount=100
final_amount=200
win=0
lose=0
read -p "Enter a monetary value:" x
while [ $initial_amount ]
do
if (( $initial_amount -ge $x && $x-le $final_amount ))
then
$(($win++))
elif (( 0 -ge $x && $x -le $initial_amount ))
then
$(($lose++))
fi
if (( $x -eq 0 ))
then
echo "Broke!"
elif (( $x -eq $final_amount ))
then
echo "Maximum value of 200 is reached"
fi
done

if (( $x -eq 0 ))
then
echo "Broke!"
elif (( $x -eq $final_amount ))
then
echo "Maximum value of 200 is reached"
fi
fi
