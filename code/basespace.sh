#!/usr/bin/bash

source ./config.sh

# get the access token by following the URL. 
bs auth

bs download $dl -i ${ProjectID} -o ../results/ 

# Print the command
echo "bs download" $dl "-i" ${ProjectID} "-o ../results/ "

