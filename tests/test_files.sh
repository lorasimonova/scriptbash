#!/bin/bash
chmod +x ../scripttt.sh
result=`../scripttt.sh -i qgioeakmdlv -o qgijoadk`
expected="no file"
if [[ $result == $expected ]]
then
    echo "test for file passed"
    exit 0
else 
    echo "test for file failed"
    exit 1
fi 
