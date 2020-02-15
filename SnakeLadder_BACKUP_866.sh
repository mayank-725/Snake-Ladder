#!/bin/bash
echo "x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x"
echo "x                                                                     x"
echo "x        WELCOME TO SNAKE AND LADDER BOARD GAME                       x"
echo "x                                                                     x"
echo "x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x=x"

<<<<<<< HEAD
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


=======
>>>>>>> useCase6-DiceCountAndPosition
player1=0
playerCurrentPosition()
{
    value=$player1
<<<<<<< HEAD
    return $value
}

#dice roll gives value of dice from 1-6
diceValue()
{
diceRoll=$(((RANDOM%6)+1))
    return $diceRoll
}

#checks condition for option to do after player turn
=======
#echo "player1's intial position is:$player1 th position"
    return $value
}

diceValue()
{
diceRoll=$(((RANDOM%6)+1))
#echo "number appeared on Dice is :$diceRoll"
    return $diceRoll
}

diceCounter=0
>>>>>>> useCase6-DiceCountAndPosition
checkOption()
{
while((player1<100))
do
<<<<<<< HEAD
	result=$((RANDOM%3))
if((result==0))
then
	echo "Gameplay option condition:No play"
	echo "player1 is at position:$player1"	

elif((result==1))
then
	echo "Gameplay option condition:ladder"
	diceValue
	diceNumber=$?
	echo "Dice Roll:$diceNumber"
	playerCurrentPosition
	position=$?
	player1=$((position+diceNumber))
	echo "player1 is at position:$player1"
else
	echo "Gameplay option condition:snake"

	diceValue
	diceNumber=$?
	playerCurrentPosition
	position=$?
	player1=$((position-diceNumber))
    
	 if((player1<0))
	 then
		player1=0
		echo "player1 is at position:$player1"
	 else
		echo "player1 is at position:$player1"
	fi
fi
	if((player1>100))
	then
		player1=$((player1-diceNumber))
	elif((player1==100))
	then
		echo "Player1 won the game"
	fi
done

}
checkOption
=======
result=$((RANDOM%3))
if((result==0))
then
echo "No play"
echo "player1 is at position:$player1"

elif((result==1))
then
echo "Ladder"
diceValue
diceNumber=$?
echo "Dice Roll:$diceNumber"
playerCurrentPosition
position=$?
player1=$((position+diceNumber))
echo "player1 is at position:$player1"
else
echo "snake"
diceValue
diceNumber=$?
playerCurrentPosition
position=$?
player1=$((position-diceNumber))
  if((player1<0))
  then
	player1=0
	echo "player1 is at position:$player1"
  else
	echo "player1 is at position:$player1"
  fi
fi
echo ""


if((player1>100))
then
	player1=$((player1-diceNumber))
elif((player1==100))
then
echo "Player1 won the game"
fi
diceCounter=$((diceCounter+1))
done
echo "Number of times dice rolled is:$diceCounter"
}
checkOption
>>>>>>> useCase6-DiceCountAndPosition
