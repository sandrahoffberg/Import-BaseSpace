#!/usr/bin/bash
# load the config file from the /code directory to get run number
source ./config.sh

# make a directory to store the bs program
mkdir -p $HOME/bin

# download the BaseSpace CLI
wget "https://launch.basespace.illumina.com/CLI/latest/amd64-linux/bs" -O $HOME/bin/bs

# make the downloaded binary executable
chmod u+x $HOME/bin/bs

# create symlink
ln -s $HOME/bin/bs /usr/local/bin

# get the access token by following the URL. 
bs auth

# download all files from project ID with extension fastq.gz
bs download $dl -i $ProjectID -o ../results/ $files

# Print the command
echo "bs download" $dl "-i" $ProjectID "-o ../results/ " $files
