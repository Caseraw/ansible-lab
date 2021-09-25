#!/bin/bash

printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
echo "Remove ~/ansible"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
rm -rf ~/ansible

printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
echo "Clone new project"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
git clone https://github.com/Caseraw/ansible-lab.git ~/ansible
