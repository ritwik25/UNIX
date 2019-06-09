#!/usr/bin/env bash
# File:   guessinggame.sh
function guessinggame
{
flag=1
while [[ $flag -eq 1 ]]
do
 echo "Enter the number of files"
 read response
 echo "you entered : $response"
 files=$(ls |wc -l)
 if [[ $response -gt $files ]]
    then
        echo "higher value"
    elif [[ $response -lt $files ]]
    then
        echo "lower value"
    else
        flag=2
    fi
done
echo "Congratulation"
}
guessinggame