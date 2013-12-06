#!/usr/bin/env bash


echo -e "\033[0;32m"'                                             '"\033[0m"
echo -e "\033[0;32m"'    **************************************** '"\033[0m"
echo -e "\033[0;32m"'    *            Dotfile Installer         * '"\033[0m"
echo -e "\033[0;32m"'    **************************************** '"\033[0m"

# Install homebrew
# ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)";

#install casks
# brew tap phinze/homebrew-cask
# brew install brew-cask

#install kegs
brew install zsh git

# update submodules
git submodule init
git submodule update

# Create git creds file
if [ -f ~/.gitconfig_private ]
then
  echo -e "\033[0;32mFound ~/.gitconfig_private.\033[0m";
else
  echo -e "\033[0;33mNo ~/.gitconfig_private found. Generating one now...\033[0m";
  echo -e "[user]\n  name = \nemail = \n" > ~/.gitconfig_private
  echo -e "\033[0;32m~/.gitconfig_private created. Make sure to update after install completes.\033[0m";
fi

# Own Node and NPM
sudo mkdir -p /usr/local/{share/man,bin,lib/node,lib/dtrace,include/node,lib/node_modules}
sudo chown -R $USER /usr/local/{share/man,bin,lib/node,include/node,lib/node_modules,lib/dtrace}

# Install modules
npm -g install jshint node-inspector n

# Update to newest Node.js
n stable