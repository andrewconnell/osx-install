#!/bin/sh

APPLEID=$1

# install mas-cli to install from the Mac App store
brew install mas

# make sure signed in
mas signin $APPLEID

# install macos apps
mas instasll 937984704 # Amphetamine
mas instasll 603117688 # CCMenu
mas instasll 549083868 # Display Menu
mas instasll 715464874 # Disk Map
mas instasll 413857545 # Divvy
mas instasll 524141863 # Jump Desktop
mas instasll 405399194 # Kindle
mas instasll 638332853 # Logitech Camera Settings
mas instasll 639968404 # Parcel
mas instasll 548125767 # WeathrClip
mas instasll 410628904 # Wunderlist