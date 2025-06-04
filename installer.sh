#!/usr/bin/env bash

echo "Starting macOS configuration"

read -p "Please enter your name:" USERNAME
echo "Hello $USERNAME, let's setup your mac 😊"

echo "Installing Homebrew"
# Check for Homebrew, install if we don't have it
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Setup homebrew
echo "Getting ready"
echo "Attempting to download and execute setup script from: https://raw.githubusercontent.com/lovozeto/macOS-postinstall/master/scripts/homebrew-setup.sh"
homebrew_setup_script_content=$(curl -fsSL https://raw.githubusercontent.com/lovozeto/macOS-postinstall/master/scripts/homebrew-setup.sh)
if [ $? -ne 0 ]; then
  echo "Error: Failed to download Homebrew setup script."
  exit 1
fi
if [ -z "$homebrew_setup_script_content" ] || echo "$homebrew_setup_script_content" | grep -q "DOCTYPE html" || echo "$homebrew_setup_script_content" | grep -q "404 Not Found"; then
  echo "Error: Invalid content received for Homebrew setup script."
  exit 1
fi
/bin/bash -c "$homebrew_setup_script_content"

# Install Apps
echo "Installing apps"
USER_SCRIPT_URL="https://raw.githubusercontent.com/lovozeto/macOS-postinstall/master/personal-files/$USERNAME/homebrew-install-apps.sh"
echo "Checking if user-specific script exists at: $USER_SCRIPT_URL"
if ! curl --head --silent --fail -L "$USER_SCRIPT_URL" > /dev/null; then
  echo "Error: User-specific script not found at $USER_SCRIPT_URL. Please ensure the username '$USERNAME' is correct and the corresponding script exists in the remote repository."
  exit 1
fi
echo "Attempting to download and execute user-specific apps script from: $USER_SCRIPT_URL"
homebrew_install_apps_script_content=$(curl -fsSL "$USER_SCRIPT_URL")
if [ $? -ne 0 ]; then
  echo "Error: Failed to download Homebrew install apps script."
  exit 1
fi
if [ -z "$homebrew_install_apps_script_content" ] || echo "$homebrew_install_apps_script_content" | grep -q "DOCTYPE html" || echo "$homebrew_install_apps_script_content" | grep -q "404 Not Found"; then
  echo "Error: Invalid content received for Homebrew install apps script."
  exit 1
fi
/bin/bash -c "$homebrew_install_apps_script_content"

# The following section for the OpenCore Legacy Patcher is currently disabled.
# It can be enabled if you are running this script on a Mac with an unsupported macOS version.
# Legacy Mac Patcher
#read -r -p "Is this Mac running an unsupported version of macOS? [Y/n] " input
# case $input in
#    [yY][eE][sS]|[yY])
#        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/lovozeto/macOS-postinstall/master/scripts/opencore-legacy-install.sh)"
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
        echo "Attempting to download and execute Office installation script from: https://raw.githubusercontent.com/lovozeto/macOS-postinstall/master/scripts/office-install.sh"
        office_install_script_content=$(curl -fsSL https://raw.githubusercontent.com/lovozeto/macOS-postinstall/master/scripts/office-install.sh)
        if [ $? -ne 0 ]; then
          echo "Error: Failed to download Office install script."
          exit 1
        fi
        if [ -z "$office_install_script_content" ] || echo "$office_install_script_content" | grep -q "DOCTYPE html" || echo "$office_install_script_content" | grep -q "404 Not Found"; then
          echo "Error: Invalid content received for Office install script."
          exit 1
        fi
        /bin/bash -c "$office_install_script_content"
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
