#!/bin/sh

# install cask apps
CASKS=(
    appcleaner
    balenaetcher
    figma-beta
    keka
    logitech-options
    #makemkv
    #microsoft-edge
    onyx
    #sketch
    surfshark
    unpkg
    visual-studio-code-insiders
    sf-symbols
    font-sf-pro
    font-sf-compact
    font-sf-mono
    font-new-york
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
    1591303229 # Vinegar
    1601151613 # Baking Soda
    1024974133 # Mountain Duck
    803453959 # Slack
    693112260 # Sim Daltonism
    493145008 # Headspace
    409183694 # Keynote
    409201541 # Pages
    409203825 # Numbers
    1351639930 # Gifski
)

echo "Installing apps from the App Store..."
mas install ${APPS[@]}