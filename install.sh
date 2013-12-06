#!/usr/bin/env bash

echo -e "\033[0;34mCloning .Dotfiles...\033[0m"
hash git >/dev/null && /usr/bin/env git clone https://github.com/euforic/.dotfiles ~/.dotfiles || {
  echo "git not installed"
  exit
}

echo -e "\033[0;34mRunning Setup\033[0m"
./~/.dotfiles/setup.sh

echo -e "\033[0;34mLinking Dotfiles\033[0m"
./~/.dotfiles/link.sh