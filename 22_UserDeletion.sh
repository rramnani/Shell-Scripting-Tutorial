#!/bin/bash


# Manual: sudo -S Write the prompt to the standard error and 
# read the password from the standard input instead of using the terminal device. 
# The password must be followed by a newline character.

echo "example to read a username, make use of system password, deluser"

# Global variables below - username and systempassword
read -p "Enter a username to be delted: " $username
read -sp "Enter the system/admin password: " $systempassword

# function declaration
deluser(){
        echo $systempassword | sudo -S deluser $username

}

# function call
deluser

# check for existing users
# cat /etc/passwd
