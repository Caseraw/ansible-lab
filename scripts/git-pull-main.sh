#!/bin/bash

printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
echo "Pull latest master branch and rebase"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
cd ~/ansible

git pull origin main --rebase

cd -
