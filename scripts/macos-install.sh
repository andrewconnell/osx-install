#!/bin/sh

# install mas-cli to install from the Mac App store
brew install mas

# get Apple ID
echo ""
echo "Enter AppleID to signin to Mac App Store:"
read -p "  AppleID (john@foo.com): " APPLEID

# make sure signed into Mac App Store
mas signin $APPLEID

# install macos apps
mas install 937984704 # Amphetamine
mas install 603117688 # CCMenu
mas install 549083868 # Display Menu
mas install 715464874 # Disk Map
mas install 413857545 # Divvy
mas install 524141863 # Jump Desktop
mas install 405399194 # Kindle
mas install 638332853 # Logitech Camera Settings
mas install 639968404 # Parcel
mas install 548125767 # WeathrClip
mas install 410628904 # Wunderlist