#!/bin/bash

printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' - &&\
echo "Install Python" &&\
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' - &&\
sudo dnf module install python39 -y &&\
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' - &&\
echo "Install additional system packages" &&\
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' - &&\
sudo dnf install git -y &&\
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' - &&\
echo "Show python details" &&\
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' - &&\
sudo python3 --version &&\
sudo alternatives --list &&\
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' - &&\
echo "Install pip packages" &&\
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' - &&\
python3 -m pip install --user --upgrade pip setuptools ansible &&\
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' - &&\
echo "Show ansible details" &&\
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' - &&\
ansible --version &&\
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
