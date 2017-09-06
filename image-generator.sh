#!/bin/bash
# Script for generating a Piratebox Image
# @author: Christian Wang
clear

echo "WELCOME TO THE PIRATEBOX IMAGE-GENERATOR"

while true; do

  read -n1 -r -p "$(echo -e 'Choose option 1. for snapshot build\n Choose option 2. for stable build\n Choose option 3. to quit Y/N\n\b')" option
  case $option in
    [1]* ) echo "Installing Packages..."
    sed -i -e 's/false/true/g' lede/Makefile
    break;;
    [2]* )
    sed -i -e 's/true/false/g' lede/Makefile
    break;;
    [3]* ) exit break;;
    *) echo "Please choose an option"
  esac
done

while true; do

  read -n1 -r -p "$(echo -e 'Display available image profiles? Y/N\n\b')" yn
  case $yn in
    [Yy]* )
    cd lede
    make info
    break;;
    [Nn]* ) break;;
    *) echo "Please answer yes or no"
  esac
done

echo "Type the name of the profile you would like to generate an image for."
read profile

echo "Attempting to build the image"
make profile

echo "All done, the image can be found in the target__ar71xx folder"
