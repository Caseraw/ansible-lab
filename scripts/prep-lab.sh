#!/bin/bash

GREEN='\033[0;32m'
NC='\033[0m'

printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
printf "${GREEN}Install Python${NC}"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
sudo dnf module install python39 -y

printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
printf "${GREEN}Install additional system packages${NC}"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
sudo dnf install git tree lsof bash-completion -y &&\

printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
printf "${GREEN}Show python details${NC}"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
sudo alternatives --list
echo ""
sudo python3 --version

printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
printf "${GREEN}Install pip packages${NC}"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
python3 -m pip install --user --upgrade pip setuptools ansible

printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
printf "${GREEN}Show ansible details${NC}"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
ansible --version
