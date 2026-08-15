#!/bin/bash

echo "QR Code Generator Tool"
echo "Is This OK To Install The Tool [y/n]: "
read type

if [ $type == "y" ] || [ $type == "Y" ]; then
# Script Writing...
sudo echo"#!/usr/bin/env python3

import qrcode

print(f"\033[32m Hi Hello !!!")

print(f"\033[32m It is a QR Code Generator Script...")

data_input = input(f"\033[32m Enter the input value : ")

save_path = input(f"\033[32m Enter the file path, file name, & file type ( mentaion the file type : like .png .jpg) : ")

qr = qrcode.make(data_input)

qr.save(save_path)

print(f"\033[32m QR Code Successfully Generated !!!")

" >> /usr/local/bin/qrcode

# Executing Permission...
sudo chmod +x /usr/local/bin/qrcode

elif [ $type == "n" ] || [ $type == "N" ]; then
# Script Not Writing and Exit the Installation Process...
echo "Exit the Installation Process..."

else
echo "Re-run The Script Again & Enter Correct Value..."

fi
