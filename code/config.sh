#!/usr/bin/env bash

# Project ID is the first parameter.  It must be supplied (or else will get error above)
if [ -z $1 ]
  then
    echo "A Project or Run ID must be specified in the App Panel"
    echo "See README.md for more information"
    exit 1
  else
    ProjectID=$1
fi


# Whether to download the run or a project is the second parameter. Since this is a list, there will always be an option chosen. Use it. 
dl=$2


# If downloading a project (variable 2), then
if [[ $2 == project ]]; then
# add a flag to the command that says --extension = whatever is selected from list.
files=--extension=$3
# Else (a run is being downloaded)
else
# Do not add flag to command. 
files=
fi