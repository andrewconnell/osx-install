#!/bin/sh

# install cask apps
CASKS=(
    appcleaner
    keka
    onyx
)

echo "Installing apps from the web..."
brew install ${CASKS[@]}

# get Apple ID
echo ""
echo "Enter AppleID to signin to Mac App Store:"
read -p "  AppleID (john@email.com): " APPLEID

# make sure signed into Mac App Store
mas signin $APPLEID

# install macos apps
APPS=(
    1440147259 # Adguard-for-safari
    409183694 # Keynote
    409201541 # Pages
    409203825 # Numbers
)

echo "Installing apps from the App Store..."
mas install ${APPS[@]}