#!/bin/sh

# install cask apps
CASKS=(
    appcleaner
    keka
    kekaexternalhelper
    onyx
)

echo "Installing apps from the web..."
brew install ${CASKS[@]}

# get Apple ID
echo "Enter Pali's Apple ID to signin to Mac App Store:"
read -p "  Apple ID (john@email.com): " APPLEID

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