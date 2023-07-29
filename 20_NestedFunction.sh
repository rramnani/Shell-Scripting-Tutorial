#!/bin/bash

echo "Function nested inside a function"

demo(){
        test "Tesla Model X" == "Tesla Model Y" && echo "Yes." || echo "No."
        demo2(){
                test "Tesla Model 3" == "Tesla Model 3" && echo "Yes." || echo "No."
}
demo2
}
demo

sum1(){
echo "sum1: The sum of $1 and $2 is $(($1+$2))"
        sub(){
                echo "$1 - $2 => " $(($1-$2))
        }
sub 13 12
}
sum1 13 12
