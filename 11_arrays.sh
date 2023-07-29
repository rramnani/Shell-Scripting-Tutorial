#!/bin/bash

echo "Array - for storing multiple values in a single variable"

namelist=(Ayush Ayushi Avinash Kumar);

echo ${namelist[0]}
echo ${namelist[*]}
