#!/bin/sh

# install cask apps
CASKS=(
    figma-beta
    #sketch
    openemu-experimental
    keka
    kekaexternalhelper
    logitech-options
    eloston-chromium
    #microsoft-edge
    #makemkv
    onyx
    surfshark
    unpkg
    appcleaner
    grandperspective
    balenaetcher
    visual-studio-code-insiders
    github
    font-sf-pro
    font-sf-compact
    font-sf-mono
    font-new-york
    sf-symbols
)

echo "Installing apps from the web..."
brew install ${CASKS[@]}
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/lovozeto/macOS-postinstall/master/scripts/glassfactory-install.sh)"

# get Apple ID
echo "Enter Esteban's Apple ID to signin to Mac App Store:"
read -p "  Apple ID (john@email.com): " APPLEID

# make sure signed into Mac App Store
mas signin $APPLEID

# install macos apps
APPS=(
    1440147259 # Adguard - Safari
    1591303229 # Vinegar - Safari
    1601151613 # Baking Soda - Safari
    1564329434 # Momentum - Safari
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