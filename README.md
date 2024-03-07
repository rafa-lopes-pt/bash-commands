# Bash Commands
For anyone that grew tired of setting up a new exercise folder from boolean...here's a little automation tool :P
Please read the following notes carefully

## What is this?
Each file contains a set of commands that performs repetitive tasks on a single command
Since my main OS is linux...I'm not sure about compability with the windows shells, but should work on git bash. Feel free to take the idea and make it work on your machine!

## Setup
1. Download these files to your machine (maybe create a specific folder or something to store them)
2. Open the files in vscode and edit them (Instructions on each file)
3. Read this [link](https://www.geeksforgeeks.org/custom-commands-linux-terminal/) about setting custom commands on linux
   - the command should look something like this:   `alias setupbe='<FILE_PATH>/setupbe.sh';`
   - <FILE_PATH> should be the full path of where you stored your file

## Usage
If you set up these files properly, the commands should be available globally, alowing you to do this:
1. Open your terminal
2. type `setupbe`
    - paste the ssh url from your repo
(At this point vscode will automatically open and you can close the terminal window)
4. Do the exercise
5. From the vscode terminal (make sure you're on the right path) type `submitbe`
6. Enter a commit message (press enter to use the default message)
7. Open a pull request from the github page that just opened :)

## *DO NOT USE THIS IF:*
- You don't feel confortable with the terminal and it's commands, **get some practice first!**
- You struggle in any way to understand terminal errors and how to handle them

### Disclaimer
Use this at your own risk. I am not liable for any damages caused on your machine, nor am i responsible in any way for the submission of your exercises! Opening a pull request is a feature from **github** and not **git** (they're 2 different things), you still need to manually open a pull request!
