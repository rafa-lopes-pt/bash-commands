#!/usr/bin/env bash

# submitbe -> submit boolean exercise
# Author : Rafa Lopes
# Date: March 2024
#

#========================= EDIT THESE FIELDS ONLY
#DEFAULT_COMMIT_MSG -> The default message that will appear on your commit log.
#Since we need to identify the pull request with our names...if your first and only commit has your name, github uses it's value to name the pull request!
#Remember that on bigger projects it's ALWAYS good to have descriptive commits
DEFAULT_COMMIT_MSG="Your Name" 
#========================= DO NOT EDIT BELLOW THIS LINE
clear

# Add files and create a commit 
git add .

read -p "Commit message [Your Name]: " NAME
NAME=${NAME:-"$DEFAULT_COMMIT_MSG"}
git commit -m "$NAME"

# Open the Pull Request URL for your current directory's branch (base branch defaults to main)
function openpr() {
  github_url=`git remote -v | awk '/fetch/{print $2}' | sed -Ee 's#(git@|git://)#https://#' -e 's@com:@com/@' -e 's%\.git$%%' | awk '/github/'`;
  branch_name=`git symbolic-ref HEAD | cut -d"/" -f 3,4`;
  pr_url=$github_url
  open $pr_url;
}
 
# Run git push and then immediately open the Pull Request URL
function gpr() {
  git push origin HEAD
 
  if [ $? -eq 0 ]; then
    openpr
  else
    echo 'failed to push commits and open a pull request.';
  fi
}
(gpr)


echo "Done"