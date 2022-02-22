#!/bin/sh

# install cask apps
CASKS=(
    adobe-creative-cloud
    appcleaner
    figma
    keka
    firefox
    onyx
    grandperspective
    wacom-tablet
)

echo "Installing apps from the web..."
brew install ${CASKS[@]}

# get Apple ID
echo "Enter Laura's Apple ID to signin to Mac App Store:"
read -p "  Apple ID (john@email.com): " APPLEID

# make sure signed into Mac App Store
mas signin $APPLEID

# install macos apps
APPS=(
    1440147259 # Adguard-for-safari
    1591303229 # Vinegar
    1601151613 # Baking Soda
    409183694 # Keynote
    409201541 # Pages
    409203825 # Numbers
    1351639930 # Gifski
)

echo "Installing apps from the App Store..."
mas install ${APPS[@]}