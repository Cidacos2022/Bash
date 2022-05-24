#!/bin/bash
for (( n=60000; n<=63000; n++ ))
do

    t=1
    for (( i=2; i<$n; i++ ))
    do
            if (($n%i==0))
            then
            t=0
            break;
            fi
    done

    if [ $t == 1 ]
    then
        data+=($n)
    fi

done

printf -v joined '%s|' "${data[@]}"
echo "${joined%,}"