#!/bin/bash

echo "[1] QR Code Generator Tool"
echo "[2] Text To Voice Generator Tool"
echo "Is This OK To Install The Tools [y/n]: "
read type

if [ $type == "y" ] || [ $type == "Y" ]; then
# Script Writing...
sudo cp qrcode /usr/local/bin/
sudo cp voice /usr/local/bin/

# Executing Permission...
sudo chmod +x /usr/local/bin/qrcode
sudo chmod +x /usr/local/bin/voice

elif [ $type == "n" ] || [ $type == "N" ]; then
# Script Not Writing and Exit the Installation Process...
echo "Exit the Installation Process..."

else
echo "Re-run The Script Again & Enter Correct Value..."

fi
