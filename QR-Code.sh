#!/bin/bash

green='\033[32m'
red='\033[31m'
nc='\033[0m'

echo "${green}QR Code Generator Tool${nc}"
echo "${green}Is This OK To Install The Tool [y/n]: ${nc}"
read type

if [ $type == "y" ] || [ $type == "Y" ]; then
# Script Writing...
sudo cp qrcode /usr/local/bin/

# Executing Permission...
sudo chmod +x /usr/local/bin/qrcode

elif [ $type == "n" ] || [ $type == "N" ]; then
# Script Not Writing and Exit the Installation Process...
echo "${red}Exit the Installation Process...${nc}"

else
echo "${red}Re-run The Script Again & Enter Correct Value...${nc}"

fi
