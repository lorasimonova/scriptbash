#!/bin/bash
chmod +x ../scripttt.sh
../scripttt.sh fff.txt ggg.txt нечетное
result=$(awk 'END{print}' ggg.txt)
expected="3"
if [[ $result == $expected ]]
then
    echo "test for odd passed"
    exit 0
else 
    echo "test for odd failed"
    exit 1
fi 
