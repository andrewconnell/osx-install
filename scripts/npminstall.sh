#!/bin/sh

nvm use lts/boron
curl -L https://raw.githubusercontent.com/andrewconnell/osx-install/master/scripts/npm-global-package-install.sh | sh
nvm use lts/carbon
curl -L https://raw.githubusercontent.com/andrewconnell/osx-install/master/scripts/npm-global-package-install.sh | sh
nvm use lts/dubnium
curl -L https://raw.githubusercontent.com/andrewconnell/osx-install/master/scripts/npm-global-package-install.sh | sh
nvm use lts/erbium
curl -L https://raw.githubusercontent.com/andrewconnell/osx-install/master/scripts/npm-global-package-install.sh | sh
nvm use stable
curl -L https://raw.githubusercontent.com/andrewconnell/osx-install/master/scripts/npm-global-package-install.sh | sh
