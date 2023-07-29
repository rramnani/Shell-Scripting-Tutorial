#!/bin/bash

echo "Function is a block code - which can be used repeatedly - to perform repetitive tasks"

test_strings(){
test "Tesla Model X" == "Tesla Model Y" && echo "Yes." || echo "No."
test "Tesla Model 3" == "Tesla Model 3" && echo "Yes." || echo "No."
}
test_strings

# Parameterized functions
sum(){
a=12
b=12
echo "The sum of $a and $b is $(($a+$b))"
}

sum

sum1(){
#echo "sum1: The sum of $1 and $2 is $(($1+$2))"
echo "return from $FUNCNAME" $(($1+$2))
return $(($1+$2))
}
sum1 13 12

getDirname(){
echo "Name of directory is "$1
}
getDirname myname

# to store the return value from a function

sum2(){
a=$1
b=$2
echo "return from $FUNCNAME" $(($1+$2))
return  $(($1+$2))
}
sum2 12 13
sum1 14 13
sum2 13 13
# most recent function return value
ret=$?
echo "The return value of recently used function is:" $ret
