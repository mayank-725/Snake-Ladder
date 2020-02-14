#!/bin/bash
echo "x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x"
echo "x                                                                     x"
echo "x        WELCOME TO SNAKE AND LADDER BOARD GAME                       x"
echo "x                                                                     x"
echo "x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x"

counter=0
for (( i = 10; i>0; i-- ))
do
echo "+------+------+------+------+------+------+------+------+------+------+"
echo "|      |      |      |      |      |      |      |      |      |      |"
echo -n "|"

for (( j = 1; j < 11; j++ ))
do

if((counter>90))
then
	echo -n "   $(((i*10+1)-j))  |"
# echo -n " "
else	
if((counter==0))
then
	# echo -n " "
	echo -n " $(((i*10+1)-j))  |"
else																										
echo -n "  $(((i*10+1)-j))  |"
fi
fi
counter=$((counter+1))
done
echo ""
echo "|      |      |      |      |      |      |      |      |      |      |"
echo "+------+------+------+------+------+------+------+------+------+------+"
done

player1=0
echo "player1's intial position is:$player1 th position"
	
diceRoll=$(((RANDOM%6)+1))
echo "number appeared on Dice is :$diceRoll"
