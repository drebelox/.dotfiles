#!/usr/bin/env bash


# Install homebrew
# ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)";

#install casks
# brew tap phinze/homebrew-cask
# brew install brew-cask

#install kegs
# brew install zsh git

# Own Node and NPM
sudo mkdir -p /usr/local/{share/man,bin,lib/node,lib/dtrace,include/node}
sudo chown -R $USER /usr/local/{share/man,bin,lib/node,include/node,lib/dtrace}

# Install modules
npm -g install jshint node-inspector n

# Update to newest Node.js
n stable