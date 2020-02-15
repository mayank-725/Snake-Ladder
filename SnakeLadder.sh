#!/bin/bash
player1=0
player2=0

#dice roll gives value of dice from 1-6
diceValue()
{
	diceRoll=$(((RANDOM%6)+1))
    return $diceRoll
}


diceCounter=0
checkOption()
{
	value=$1
	result=$((RANDOM%3)) 
	if((result==0))
    then
		if((value==1))
		then
			echo "Gameplay option condition:No play"
			echo "player1 is at position:$player1"	
		else
			echo "Gameplay option condition:No play"
			echo "player2 is at position:$player2"
		fi
	elif((result==1))
	then
		if((value==1))
		then
			echo "Gameplay option condition:ladder"
			diceValue
			diceNumber=$?
			echo "Dice Roll:$diceNumber"
			player1=$((player1+diceNumber))
			if((player1>100))
			then
				player1=$((player1-diceNumber))
			fi
			echo "player1 is at position:$player1"
		else
			echo "Gameplay option condition:ladder"
			diceValue
			diceNumber=$?
			echo "Dice Roll:$diceNumber"
			player2=$((player2+diceNumber))
			if((player2>100))
			then
				player2=$((player2-diceNumber))
			fi
			echo "player2 is at position:$player2"
		fi
	else
		if((value==1))
		then
			echo "Gameplay option condition:snake"
			diceValue
			diceNumber=$?
			position=$?
			player1=$((player1-diceNumber))
			
			if((player1<0))
			then
				player1=0
				echo "player1 is at position:$player1"
			else
				echo "player1 is at position:$player1"
			fi
		else
			echo "Gameplay option condition:snake"
			diceValue
			diceNumber=$?
			position=$?
			player2=$((player2-diceNumber))
			if((player2<0))
			then
				player2=0
				echo "player2 is at position:$player2"
			else
				echo "player2 is at position:$player2"
			fi
		fi	
    fi	
}

dicecounter=0
while((player1<100 && player2<100))
do
	if((diceCounter%2==0))
	then
	    checkOption 1
		if((player1==100))
		then
		echo "Player1 won the game"
		fi
	else 
		checkOption 2
		if((player2==100))
		then
			echo "Player2 won the game"
		fi
	fi
	diceCounter=$((diceCounter+1))
done
echo "Number of times dice rolled is:$diceCounter"
