#!/usr/bin/env bash

# submitbe -> submit boolean exercise
# Author : Rafa Lopes
# Date: March 2024
#

clear

# Add files and create a commit 
git add .

read -p "Commit message [Rafa Lopes]: " name
name=${name:-"Rafa Lopes"}
git commit -m "$name"

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