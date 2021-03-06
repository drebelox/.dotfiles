#!/usr/bin/env bash

#install kegs
brew install git
brew install zsh
brew install go
brew install node
brew install tmux
brew install python

# override system vim
brew install vim --env-std --override-system-vim

#install casks
brew tap phinze/homebrew-cask

# install differnet app version via casks
brew tap caskroom/versions

# install fonts via casks
brew tap caskroom/fonts

# update brews and casks
echo "\033[0;34mFetching latest homebrew formulas...\033[0m"
brew update
brew install brew-cask

# Install oh-my-zsh
# rm -rf ~/.oh-my-zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# Install vim bundles for vim
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall

# Own Node and NPM
sudo mkdir -p /usr/local/{share/man,bin,lib/node,lib/dtrace,include/node,lib/node_modules}
sudo chown -R $USER /usr/local/{share/man,bin,lib/node,lib/dtrace,include/node,lib/node_modules}

# Install modules
npm -g install jshint node-inspector n

# Update to newest Node.js
n stable