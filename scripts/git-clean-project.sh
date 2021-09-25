#!/bin/bash

GREEN='\033[0;32m'
NC='\033[0m'

printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
printf "${GREEN}Remove ~/ansible AND Clone new project${NC}\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
rm -rf ~/ansible
git clone https://github.com/Caseraw/ansible-lab.git ~/ansible

printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
printf "${GREEN}Install project dependencies${NC}\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
cd ~/ansible
ansible-galaxy role install -r requirements.yml
cd
