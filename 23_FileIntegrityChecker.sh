#!/bin/bash

echo "example to generate hash and check integrity of file"

# function declaration
generatehash(){
        read -p "Please enter the filename: " filename
#       if test -f $filename
        if [ ! -f "$filename" ]
        then
                echo "This file does not exist! exiting..."
                return 0
        fi

        md5sum $filename > $filename.md5
        echo "Hash value stored in $filename.md5 file"
        cat $filename.md5 | awk '{print $1}'
}

comparehashvalue(){
        read -p "Please enter filename: " filename
        if [ ! -f "$filename" ]
        then
                echo "This file does not exist! exiting..."
                return 0
        fi
        output=$(md5sum $filename)
        generatedhash=$(cat $filename.md5)

        if [ "$output" == "$generatedhash" ]
        then
                echo "There is no update in file; You have the latest copy."
        else
                echo "There was an update done in the file > You may have an outdated copy!!!"
        fi
}

echo "1. Generate hash"
echo "2. Check file integrity"

read -p "Enter your choice: " choice

case $choice in
        1)
        echo "Generating hash..." 
        generatehash
        ;;
        2)
        echo "Checking/comparing hash..." 
        comparehashvalue
        ;;
        *)
        printf "\nInvalid choice\n"
esac    
