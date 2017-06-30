#!/bin/sh

APPLEID=$1

# install mas-cli to install from the Mac App store
brew install mas

# make sure signed in
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