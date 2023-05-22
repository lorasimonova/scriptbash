#!/bin/bash

if [[ ! -n $3 ]] && [[ ! -n $1 ]] && [[ ! -n $2 ]]
then
    echo "no arguments"
    exit 1
fi 
if [[ ! -f $1 ]] && [[ ! -f $2 ]]
then  
    echo "failed arguments"
    exit 1
fi 

if [[ $3 == "четное" ]]
then 
    count=0
    for line in $(cat $1)
    do
        for arr in $line 
        do
            if [[ $(($arr % 2)) -eq 0 ]] 
            then 
                count=$((count+1))
            fi
        done
    done
elif [[ $3 == "нечетное" ]] 
    then
    count=0
    for line in $(cat $1)
    do
        for arr in $line 
        do
            if [[ $(($arr % 2)) -ne 0 ]] 
            then 
                count=$((count+1))
            fi
        done
    done
    
else
    echo "не правильный ввод"
    exit 1
fi
echo "$count" >> $2