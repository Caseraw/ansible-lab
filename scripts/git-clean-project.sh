#!/bin/bash

printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
echo "Remove ~/ansible AND Clone new project"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
rm -rf ~/ansible
git clone https://github.com/Caseraw/ansible-lab.git ~/ansible
