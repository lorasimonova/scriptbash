#!/bin/bash
chmod +x ../scripttt.sh
../scripttt.sh -i fff.txt -o ggg.txt четное
result=$(awk 'END{print}' ggg.txt)
expected="6"
if [[ $result == $expected ]]
then
    echo "test for even passed"
    exit 0
else 
    echo "test for even failed"
    exit 1
fi 
