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
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

# Upgrade installed elements
brew upgrade

PACKAGES=(
    git
    wget
)

echo "Installing tools..."
brew install ${PACKAGES[@]}

echo "Cleaning up..."
brew cleanup

CASKS=(
    onyx
    keka
    vlc
    UTM
    microsoft-edge
    microsoft-office
)

echo "Installing apps from the web..."
brew install cask ${CASKS[@]}

# Delete non-standard office apps
read -r -p "Do you want to keep only standard office apps? (Word, Excel, PowerPoint) [Y/n] " input
 
case $input in
    [yY][eE][sS]|[yY])
        echo "Removing..."
        sudo rm -r /Applications/Microsoft\ OneNote.app
        sudo rm -r /Applications/Microsoft\ Outlook.app
        sudo rm -r /Applications/OneDrive.app
        echo "Removed!"
 ;;
    [nN][oO]|[nN])
  echo "Skipping..."
       ;;
    *)
 echo "Invalid input..."
 exit 1
 ;;
esac

# Office patcher
read -r -p "Do you want to patch Office Apps? [Y/n] " input
 
case $input in
    [yY][eE][sS]|[yY])
         echo "Getting Microsoft Office patch..."
        wget -c https://gist.github.com/zthxxx/9ddc171d00df98cbf8b4b0d8469ce90a/raw/Microsoft_Office_2019_VL_Serializer.pkg -P ~/Downloads/

        echo "Closing Office apps..."
        OFFICE=(
            Microsoft Word
            Microsoft Excel
            Microsoft Outlook
            Microsoft PowerPoint
            Microsoft OneNote
            OneDrive
        )
        killall Microsoft ${OFFICE[@]} -target /

        echo "Installing Office patch..."
        sudo installer -verbose -pkg ~/Downloads/Microsoft_Office_2019_VL_Serializer.pkg -target /

        rm ~/Downloads/Microsoft_Office_2019_VL_Serializer.pkg
 ;;
    [nN][oO]|[nN])
         echo "Skipping"
       ;;
    *)
 echo "Invalid input..."
 break
 ;;
esac

# App Store Apps
echo "Opening App Store, please sign in manually"
open -a "App Store"

read -p "After signing in press enter to continue"

APPS=(
    1440147259 # Adguard-for-safari
    409183694 # Keynote
    409201541 # Pages
    409203825 # Numbers
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

read -r -p "Do you want to restar? [Y/n] " input
 
case $input in
    [yY][eE][sS]|[yY])
 echo "Restarting"
 reboot
 ;;
    [nN][oO]|[nN])
  echo "macOS was configured"
       ;;
    *)
 echo "Invalid input..."
 exit 1
 ;;
esac
