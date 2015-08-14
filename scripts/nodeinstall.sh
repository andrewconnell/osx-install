# install node
brew install node --without-npm

# setup npm packages in /~, not in place where sudo is needed
mkdir "${HOME}/.npm-packages"
echo NPM_PACKAGES="${HOME}/.npm-packages" >> ${HOME}/.bashrc
echo prefix=${HOME}/.npm-packages >> ${HOME}/.npmrc

# install npm
curl -L https://www.npmjs.org/install.sh | sh

# setup npm paths
echo NODE_PATH=\"\$NPM_PACKAGES/lib/node_modules:\$NODE_PATH\" >> ${HOME}/.bashrc
echo PATH=\"\$NPM_PACKAGES/bin:\$PATH\" >> ${HOME}/.bashrc
echo source "~/.bashrc" >> ${HOME}/.bash_profile
source ~/.bashrc

# install nvm for managing multiple node & iojs versions 
brew install nvm
mkdir ~/.nvm
echo export NVM_DIR=~/.nvm >> ~/.bashrc
echo source $(brew --prefix nvm)/nvm.sh