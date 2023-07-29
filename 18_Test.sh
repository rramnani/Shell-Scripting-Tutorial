#!/bin/bash


echo "test command - used to test a particular condition"
echo "returns 0 if condition is True else 1"

namelist=(Python C C++ Java JS);

test "Rohit" = "Rohit" && echo "Yes." || echo "No."

a="Roshni"
b="Roshni"

if test "$a" = "$b"
then
       echo "A and B are equal."
else
       echo "Not equal"
fi

echo "test whether string is empty or not"

read -p "Enter a string: " a
if test -z "$a"
then
       echo "string is empty"
else
       echo "string is not empty"
fi

echo "test whether numbers are equal or not"
read -p "Enter 1st no. =>a " a
read -p "Enter 1st no. =>b " b

if test "$a" -eq "$b"
then
       echo "A and B are equal."
else
       echo "Not equal"
fi

echo "using test command"
if test -s hello.txt
then
        echo "file is not empty"
else
        echo "file is empty"
fi

read -p "Enter a dir name: " dir1
mkdir -p $dir1

if test -d "$dir1"
then
       echo "its a dir!"
else
       echo "its NOT a dir!"
fi
