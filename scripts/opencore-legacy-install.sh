#!/bin/sh

#Variables
FILE=(
   ~/Downloads/OpenCore-Patcher-GUI.app.zip
)
APP=(
   OpenCore-Patcher.app
)

# Download DMG
curl https://github.com/dortania/OpenCore-Legacy-Patcher/releases/latest/download/OpenCore-Patcher-GUI.app.zip >$FILE

# Unzip DMG
unzip $FILE

# Copy App
cp -r $FILE /Applications/$APP

# Remove DMG
rm $FILE