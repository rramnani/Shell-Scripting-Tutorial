#!/bin/bash

echo "for loop example"

namelist=(Python C C++ Java JS);

#read  
echo ${namelist[$1]}
echo ${namelist[*]}


for((i=0;i<5;i++)){
        printf "Hi i was forced to write this on whiteboard; this is iteration %d \n" $i
}


for i in 1 2 3 4 5 6 7 8 9 10
do
        echo "iteration $i"
done

for i in ayush ayushi
do
        if [ $i == ayush ]
        then
        echo "$i is a good boy"
        fi
done
