#!/bin/bash
chmod +x ../scripttt.sh
result=`../scripttt.sh ggg`
expected="no arguments"
if [[ $result == $expected ]]
then    
    echo "test for arguments passed"
    exit 0
else 
    echo "test for arguments failed"
    exit 1
fi 
