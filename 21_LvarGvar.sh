#!/bin/bash

echo "#######Local variables: declared inside a function#######"

demo(){
        echo "I am inside $FUNCNAME"
        a=10
        echo "Local variable =" $a
        demo2(){
                printf "\t I am inside $FUNCNAME\n"
}
demo2
}

printf "\nBefore calling demo function $a :(\n"

demo

printf "\nAfter calling a = $a \n"

echo "#######Global variables: declared outside a function - can be accessed both inside a function as well as outside#######"

gvar="I'm a global variable"

demo(){
        echo "I am inside $FUNCNAME\n"
        echo "Accessing gvar inside the funciton: Global variable =" $gvar
        demo2(){
                printf "\t I am inside $FUNCNAME\n"
}
demo2
}

demo
echo "Accessing gvar outside the function: Global variable =" $gvar
