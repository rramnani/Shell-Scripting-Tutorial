#!/bin/bash

echo "while loop example"

namelist=(Python C C++ Java JS);

i=0

while [ $i -le 4 ];
do
        echo "iteration $i"
        echo ${namelist[$i]}
        let i++;
done
