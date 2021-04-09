#!/bin/sh

# install cask apps
CASKS=(
    adobe-creative-cloud
    appcleaner
    figma
    keka
    logitech-options
    macs-fan-control
    firefox
    onyx
    wacom-tablet
)

echo "Installing apps from the web..."
brew install cask ${CASKS[@]}

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
    1351639930 # Gifski
)

echo "Installing apps from the App Store..."
mas install ${APPS[@]}