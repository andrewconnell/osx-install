#!/bin/sh

# install cask apps
CASKS=(
    figma-beta
    openemu-experimental
    keka
    kekaexternalhelper
    arc
    #microsoft-edge
    #makemkv
    onyx
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
    microsoft-teams
    balenaetcher
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
    1024974133 # Mountain Duck
    409183694 # Keynote
    409201541 # Pages
    409203825 # Numbers
    1437809329 # Surfshark
    985367838 # Microsoft Outlook
    462058435 # Microsoft Excel
    462054704 # Microsoft Word
    1591303229 # Vinegar
    1601151613 # baking-soda
    1451733095 # Pym
    693112260 # Sim Daltonism
    953286746 # Darkroom
    1351639930 # Gifski
)

echo "Installing apps from the App Store..."
mas install ${APPS[@]}