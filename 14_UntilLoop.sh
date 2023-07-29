#!/bin/bash

echo "until loop example - it executes until the condition is false"

namelist=(Python C C++ Java JS);

i=0

until [ $i -ge 4 ];
do
        echo "iteration $i"
        echo ${namelist[$i]}
        let i++;
done

j=1
until [ $j -ge 11 ];
do
        echo "3 * $j = $((3*$j))";
        let j++;
done
