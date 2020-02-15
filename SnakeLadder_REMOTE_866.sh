#!/bin/bash

player1=0
playerCurrentPosition()
{
    value=$player1
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
checkOption()
{
while((player1<100))
do
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