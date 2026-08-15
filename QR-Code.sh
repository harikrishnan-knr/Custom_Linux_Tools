#!/bin/bash

echo "QR Code Generator Tool"
echo "Is This OK To Install The Tool [y/n]: "
read type

if [ $type == "y" ] || [ $type == "Y" ]; then
# Script Writing...
sudo cp qrcode /usr/local/bin/

# Executing Permission...
sudo chmod +x /usr/local/bin/qrcode

elif [ $type == "n" ] || [ $type == "N" ]; then
# Script Not Writing and Exit the Installation Process...
echo "Exit the Installation Process..."

else
echo "Re-run The Script Again & Enter Correct Value..."

fi
