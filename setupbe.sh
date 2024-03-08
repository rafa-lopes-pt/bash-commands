#!/usr/bin/env bash

# setupbe -> setup boolean exercise
# Author : Rafa Lopes
# Date: March 2024
#

#========================= EDIT THESE FIELDS ONLY
#DIR -> It's the default directory for your exercises
DIR=~/Desktop/Coding/Boolean
#DEFAULT_FOLDER -> 
#It's the default folder name for an exercise. 
#If you want to create a new exercise without deleting the last one, 
#a counter will be added to the name
#i.e.    ./ex   ./ex1  ./ex2 ... etc
DEFAULT_FOLDER=ex
#DEFAULT_REMOTE NAME -> If you don't know what this is... get some practice first with git!
GIT_REMOTE_NAME=origin
#========================= DO NOT EDIT BELLOW THIS LINE

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