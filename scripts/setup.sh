#!/usr/bin/env bash

# install xcode cli tools
xcode-select --install

# Install homebrew
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)";

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

# Set OS X defaults
./osx