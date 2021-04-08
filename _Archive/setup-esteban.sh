#!/usr/bin/env bash
# 
# Bootstrap script for setting up a new OSX machine
# 
# This should be idempotent so it can be run multiple times.
#
# Some apps don't have a cask and so still need to be installed by hand. These
# include:
#
# - Twitter (app store)
# - Postgres.app (http://postgresapp.com/)
#
# Notes:
#
# - If installing full Xcode, it's better to install that first from the app
#   store before running the bootstrap script. Otherwise, Homebrew can't access
#   the Xcode libraries as the agreement hasn't been accepted yet.
#
# Reading:
#
# - http://lapwinglabs.com/blog/hacker-guide-to-setting-up-your-mac
# - https://gist.github.com/MatthewMueller/e22d9840f9ea2fee4716
# - https://news.ycombinator.com/item?id=8402079
# - http://notes.jerzygangi.com/the-best-pgp-tutorial-for-mac-os-x-ever/

echo "Starting macOS configuration"

echo "Installing Homebrew"
# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
    echo "Installing homebrew..."
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update homebrew recipes
brew update

# Upgrade installed elements
brew upgrade

PACKAGES=(
    git
    wget
    mas
)

echo "Installing base tools..."
brew install ${PACKAGES[@]}

echo "Cleaning up the instalation..."
brew cleanup

CASKS=(
    onyx
    keka
    adobe-creative-cloud
    wacom-tablet
    figma
    principle
    protopie
    visual-studio-code
    vmware-fusion
    signal
    surfshark
    microsoft-edge
    macs-fan-control
    sf-symbols
    rightfont
    logitech-options
    zoom
    app-cleaner
)

echo "Installing apps from the web..."
brew install cask ${CASKS[@]}

# App Store Apps
echo "Opening App Store, please sign in manually"
open -a "App Store"

read -p "After signing in press enter to continue"

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

echo "Configuring macOS..."
# Enable tap-to-click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Reset launchpad
defaults write com.apple.dock ResetLaunchPad -bool true
killall Dock

echo "Cleaning up the instalation..."
brew cleanup

echo Everything is ready. Enjoy your new Mac!

# read -r -p "Do you want to restar? [Y/n] " input
 
# case $input in
#     [yY][eE][sS]|[yY])
#  echo "Restarting"
#  reboot
#  ;;
#     [nN][oO]|[nN])
#   echo "macOS was configured"
#        ;;
#     *)
#  echo "Invalid input..."
#  exit 1
#  ;;
# esac
