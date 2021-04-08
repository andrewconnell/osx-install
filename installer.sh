#!/usr/bin/env bash

echo "Starting macOS configuration"

read -p "Please enter your name:"  USERNAME
echo "Hello $USERNAME, let's setup your mac"

echo "Installing Homebrew"
# Check for Homebrew, install if we don't have it
sh scripts/homebrew-install.sh
sh scripts/homebrew-setup.sh

# Install Apps
echo "Installing apps"
sh personal-files/$USERNAME/homebrew-install-apps.sh

# Office installer
read -r -p "Do you want to install Office Apps? [Y/n] " input
 case $input in
    [yY][eE][sS]|[yY])
        sh scripts/office-install.sh
 ;;
    [nN][oO]|[nN])
  echo "Skipping..."
       ;;
    *)
 echo "Invalid input..."
 exit 1
 ;;
esac

# Reset launchpad
read -r -p "Do you want to reorganize launchpad apps? [Y/n] " input
case $input in
    [yY][eE][sS]|[yY])
        defaults write com.apple.dock ResetLaunchPad -bool true
        killall Dock
 ;;
    [nN][oO]|[nN])
  echo "Skipping..."
       ;;
    *)
 echo "Invalid input..."
 exit 1
 ;;
esac

# Restart
read -r -p "Do you want to restart? [Y/n] " input
case $input in
    [yY][eE][sS]|[yY])
 echo "Restarting"
 sudo reboot
 ;;
    [nN][oO]|[nN])
  echo "macOS was configured"
       ;;
    *)
 echo "Invalid input..."
 exit 1
 ;;
esac
