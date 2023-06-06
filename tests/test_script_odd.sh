#!/bin/bash
chmod +x ../scripttt.sh
../scripttt.sh -i fff.txt -o ggg.txt нечетное
result=$(awk 'END{print}' ggg.txt)
expected="8"
if [[ $result == $expected ]]
then
    echo "test for odd passed"
    exit 0
else 
    echo "test for odd failed"
    exit 1
fi 
