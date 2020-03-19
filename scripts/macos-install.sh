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
mas install 937984704  # Amphetamine
mas install 603117688  # CCMenu
mas install 715464874  # Disk Map
mas install 549083868  # Display Menu
mas install 413857545  # Divvy
mas install 682658836  # GarageBand
mas install 1217138942 # iLightShow
mas install 408981434  # iMovie
mas install 524141863  # Jump Desktop
mas install 409183694  # Keynote
mas install 405399194  # Kindle
mas install 638332853  # Logitech Camera Settings
mas install 409203825  # Numbers
mas install 409201541  # Pages
mas install 639968404  # Parcel
mas install 497799835  # Xcode
