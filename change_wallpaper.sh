#!/bin/bash

# Script to randomly set Background from files in a directory

# Directory Containing Pictures
DIR="/home/nasirhm/wallpaper"

# Command to Select a random jpg file from directory
# Delete the *.jpg to select any file but it may return a folder
PIC=$(ls $DIR/*.jpg | shuf -n1)

# Command to set Background Image
#gsettings set org.gnome.desktop.background picture-uri "file://$PIC"
feh --bg-fill $PIC
echo $PIC
