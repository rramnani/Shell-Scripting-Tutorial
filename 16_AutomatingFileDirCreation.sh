#!/bin/bash

echo "using for loop - create dirs/files"

namelist=(Python C C++ Java JS);

# Directory creation
read -p "Enter the dir name to be created: " dirname
for ((i=0;i<=4;i++)){
        mkdir $dirname${namelist[$i]}
}

# File creation
read -p "Enter the file name to be created: " filename
for ((i=0;i<=4;i++)){
        touch $filename${namelist[$i]}
}
