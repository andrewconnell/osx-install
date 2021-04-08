#!/bin/sh

# install mas-cli to install from the Mac App store
brew install mas

# get Apple ID
echo ""
echo "Enter AppleID to signin to Mac App Store:"
read -p "  AppleID (john@email.com): " APPLEID

# make sure signed into Mac App Store
mas signin $APPLEID

# install macos apps
APPS=(
    1440147259 # Adguard-for-safari
    1024974133 # Mountain Duck
    803453959 # Slack
    747648890 # Telegram
    409183694 # Keynote
    409201541 # Pages
    409203825 # Numbers
    497799835 # Xcode
    1351639930 # Gifski
)

echo "Installing apps from the App Store..."
mas install ${APPS[@]}