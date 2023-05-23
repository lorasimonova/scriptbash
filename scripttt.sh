#!/bin/bash

while [[ $# -gt 0 ]]; do
    case "$1" in 
    -i)
        input_file=$2
        shift 2
        ;; 
    -o) 
        output_file=$2
        shift 2
        ;; 
    *)
        3rd="$1"
    esac
done 

if [[ "$3rd" == "четное" ]]
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
elif [[ "$3rd" == "нечетное" ]] 
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
