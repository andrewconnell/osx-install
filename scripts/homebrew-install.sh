#!/bin/sh

# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
    echo "Installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew doctor

# homebrew cask updater: https://github.com/buo/homebrew-cask-upgrade
brew upgrade cask

brew cleanup
