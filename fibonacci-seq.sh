#!/bin/bash

fibonacci[1]=1
fibonacci[2]=1

echo -n "Digite a quantidade de números da sequência: "
read NUM

for i in $(seq $NUM); do
    fibonacci[i]=$(((fibonacci[i-1])+(fibonacci[i-2])))
    echo ${fibonacci[i]}
done

exit 0