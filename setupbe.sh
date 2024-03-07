#!/usr/bin/env bash

# setupbe -> setup boolean exercise
# Author : Rafa Lopes
# Date: March 2024
#

#Globals
DIR=~/Desktop/Coding/Boolean
DEFAULT_FOLDER=ex
GIT_REMOTE_NAME=origin

clear

#Create exercise directory
echo "Starting setup proccess in:  $DIR"
if test -d $DIR
then
    cd $DIR
else
    mkdir $DIR
    cd $DIR
fi

DEFAULT_FOLDER_COUNT=1
FOLDER_NAME=$DEFAULT_FOLDER
while [ -d ./$FOLDER_NAME ]
do
    FOLDER_NAME="$DEFAULT_FOLDER$DEFAULT_FOLDER_COUNT";
    ((DEFAULT_FOLDER_COUNT++))
done;

echo "Creating exercise folder: $FOLDER_NAME"
mkdir ./$FOLDER_NAME

#Initialize git repo
cd $FOLDER_NAME

git init
read -p "Enter the repo url: " GIT_URL 

git remote add $GIT_REMOTE_NAME $GIT_URL

#Pull data
git pull origin main

#Open VSCode

code .

echo "Done"