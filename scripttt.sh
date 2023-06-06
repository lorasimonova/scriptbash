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
    if [[ -z $third ]]; then
        third="$1"
    fi
    shift
    ;;
    esac
done 
if [[ ! -f $input_file ]]; then
    echo "no file"
    exit 3
fi
if [[ ! -f $output_file ]]; then
touch $output_file
fi

if [[ "$third" == "четное" ]]
then 
    count=0
    while read line
    do
        for arr in $line 
        do
            if [[ $((arr % 2)) -eq 0 ]] 
            then 
                count=$((count+1))
            fi
        done
    done < "$input_file"
elif [[ "$third" == "нечетное" ]] 
then
    count=0
    while read line
    do
        for arr in $line 
        do
            if [[ $((arr % 2)) -ne 0 ]] 
            then 
                count=$((count+1))
            fi
        done
    done < "$input_file"
else
    echo "неправильный ввод"
    exit 1
fi
echo "$count" >> "$output_file"
