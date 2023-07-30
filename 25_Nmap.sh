#!/bin/bash

echo "Nmap: to find the open ports // this script will try to check using nmap if a port is open/closed/filtered on a server"
echo "Nmap (Network Mapper) - free and open source utility for network exploration and security auditing."
echo "read hostname, nmap commands"

read -p "Enter host name: " hostname
read -sp "Enter system password: " systempassword

#hostname="nmap.scanme.org"

# function declaration
nmapfunction(){
        echo "1. Normal scan"
        echo "2. TCP scan"
        echo "3. UDP scan"
        read -p "Choose option: " $choice
        case $choice in
                1)
                echo "##### Normal scan #####"
                echo $systempassword | sudo -S nmap $hostname
                ;;
                2)
                echo "##### TCP scan #####"
                echo $systempassword | sudo -S nmap -sT $hostname
                ;;
                3)
                echo "##### UDP scan #####"
                echo $systempassword | sudo -S nmap -sU $hostname
                ;;
                *)
                printf "\nInvalid choice\n"
        esac
}

# function call
nmapfunction
