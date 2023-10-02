#!/bin/zsh

# install mas-cli to install from the Mac App store
brew install mas

# echo "Enter AppleID to signin to Mac App Store:"
# read -p "  AppleID (john@foo.com): " APPLEID
# make sure signed into Mac App Store
# mas signin $APPLEID

# get Apple ID
echo ""
echo "`mas` `signin` command no longer works..."
read -p "Sign in to App Store GUID & press ENTER to continue..."

# install macos apps
mas install 937984704  # Amphetamine
mas install 715464874  # Disk Map
mas install 413857545  # Divvy
mas install 1099568401 # Home Assistant
mas install 524141863  # Jump Desktop
mas install 462058435  # Microsoft Excel
mas install 784801555  # Microsoft OneNote
mas install 985367838  # Microsoft Outlook
mas install 462062816  # Microsoft PowerPoint
mas install 1295203466 # Microsoft Remote Desktop
mas install 462054704  # Microsoft Word
mas install 823766827  # OneDrive
mas install 639968404  # Parcel
mas install 497799835  # Xcode
