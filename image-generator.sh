#!/bin/bash
# Script for generating a Piratebox Image
# @author: Christian Wang
clear

echo "WELCOME TO THE PIRATEBOX IMAGE-GENERATOR"

while true; do

  read -n1 -r -p "$(echo -e 'Choose option 1. for snapshot build\n Choose option 2. for stable build\n Choose option 3. to clean files\n Choose option 4. to quit\n\b')" option
  case $option in
    [1]* ) echo "Installing Packages..."
    sed -i -e 's/SNAPSHOT=false/SNAPSHOT=true/g' lede/Makefile
    echo "\n"
    break;;
    [2]* )
    sed -i -e 's/SNAPSHOT=true/SNAPSHOT=false/g' lede/Makefile
    echo "\n"
    break;;
    [3]* )
    cd lede
    make distclean
    cd ..
    exit break;;
    [4]* ) exit break;;
    *) echo "Please choose an option"
  esac
done
cd lede

echo "Building Imagebuilder"
make imagebuilder

echo "Type the name of the profile you would like to generate an image for."
read profile

echo "Attempting to build the image"
make $profile

echo "All done, the image can be found in the target__ar71xx-generic folder"
