#!/bin/bash

n=100
while [ $n -gt 0 ];
do
        sleep 10s
        n=$((n-1))
        msg=$(netstat -ant |grep -i "CLOSE_WAIT"|wc -l)
        msg2=$(netstat -ant |grep -i "ESTABLISHED"|wc -l)
        echo "----"
        echo "established:$msg2"
        echo "CLOSE_WAIT:$msg"

done


