#!/usr/bin/env bash

echo "Starting macOS configuration"

read -p "Please enter your name:" USERNAME
echo "Hello $USERNAME, let's setup your mac 😊"

echo "Installing Homebrew"
# Check for Homebrew, install if we don't have it
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Setup homebrew
echo "Getting ready"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/lovozeto/macOS-postinstall/master/scripts/homebrew-setup.sh)"

# Install Apps
echo "Installing apps"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/lovozeto/macOS-postinstall/master/personal-files/$USERNAME/homebrew-install-apps.sh)"

# Legacy Mac Patcher
#read -r -p "Is this Mac running an unsupported version of macOS? [Y/n] " input
# case $input in
#    [yY][eE][sS]|[yY])
#        /bin/bash -c "$(curl -fsSL /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/lovozeto/macOS-postinstall/master/scripts/opencore-legacy-install.sh)"
# ;;
#    [nN][oO]|[nN])
#  echo "Skipping..."
#       ;;
#    *)
# echo "Invalid input..."
# exit 1
# ;;
#esac

# Office installer
read -r -p "Do you want to install Office Apps? [Y/n] " input
 case $input in
    [yY][eE][sS]|[yY])
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/lovozeto/macOS-postinstall/master/scripts/office-install.sh)"
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
