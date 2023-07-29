#!/bin/bash

echo "using for loop - inputted username creation + password based on choice"

for ((i=0;i<=2;i++)){
        read -p "Enter your choice 1: YES OR 2: NO " choice
        if [ $choice -eq 1 ]
        then
        read -p "Enter your username: " username
        read -sp "Enter your password: " password
        sudo useradd -m -s /bin/bash/ $username
        echo "$username:$password" | sudo chpasswd
        else
        break
        fi
}
