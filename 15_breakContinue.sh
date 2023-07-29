#!/bin/bash

echo "break - it breaks the execution of a loop - innermost if no arguments are specified"
echo "continue - it skips the execution on a specific condition"

for ((i=0;i<=10;i++)){
        if [ $i -eq 5 ]
        then
                break
        else
                echo $i 
        fi
}

echo "continue statement - skips when i == 2"
for ((i=0;i<=4;i++)){
        if [ $i -eq 2 ]
        then
                continue
        else
                echo $i 
        fi
}
for ((i=0;i<=4;i++)){
        read -p "Enter your age " age
        if [ $age -lt 18 ]
        then
                echo "You're NOT allowed to party"
                break
        else
                echo "Damn! We're partying tonight"
        fi
}
