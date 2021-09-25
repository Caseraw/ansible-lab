#!/bin/bash

GREEN='\033[0;32m'
NC='\033[0m'

printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
printf "${GREEN}Pull latest master branch and rebase${NC}\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
cd ~/ansible

git pull origin main --rebase

cd -
