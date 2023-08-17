#!/usr/bin/env bash

if [ $# -eq 0 ]; then
    echo "No arguments supplied"
else
  echo "args:"
  for i in $*; do 
    echo $i 
  done
  echo ""
fi


if [ -z ${1} ]; then
  echo "A Project or Run ID must be specified in the App Panel"
  echo "See README.md for more information"
  exit 1
else
  ProjectID=${1}
fi


if [ ${2} == "run" ]; then
  dl=run
elif [ ${2} == "project" ]; then
  dl=project
fi