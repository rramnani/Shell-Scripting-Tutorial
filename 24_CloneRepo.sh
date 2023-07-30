#!/bin/bash

echo "Read git link from username; use git command"
read -p "Enter GIT repo link: " gitrepo
domainname="github.com"

# function declaration
getrepo(){
        if [[ $gitrepo == *"$domainname"* ]];
        then
                echo "Getting Repository link Please wait..."
                git clone "$gitrepo"
        else
                echo "Please enter a valid GIT repo link"
        fi
}

# function call
getrepo
