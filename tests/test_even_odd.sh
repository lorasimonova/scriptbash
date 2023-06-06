#!/bin/bash
chmod +x ../scripttt.sh
result=`../scripttt.sh -i fff.txt -o ggg.txt алалалал`
expected="не правильный ввод"
if [[ $result == $expected ]]
then
    echo "test for even and odd number passed"
    exit 0
else 
    echo "test for even and odd number failed"
    exit 1
fi 
