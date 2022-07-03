#!/bin/bash

#My first project using Shell Script. It changes the Git name and email
#of the currently user.

printf "\nEnter your new Git name: "
read NEW_GIT_NAME

printf "Enter your new Git email: "
read NEW_GIT_EMAIL

OLD_GIT_NAME=$(git config --list | tail -n1 |cut -d'=' -f2) 
OLD_GIT_EMAIL=$(git config --list | head -n1 | cut -d'=' -f2)

git config --global user.name "$NEW_GIT_NAME"
git config --global user.email "$NEW_GIT_EMAIL"

printf "\nYour old Git name %s changed to %s." "$OLD_GIT_NAME" "$NEW_GIT_NAME"
printf "\nYour old Git email %s changed to %s.\n\n" "$OLD_GIT_EMAIL" "$NEW_GIT_EMAIL"
