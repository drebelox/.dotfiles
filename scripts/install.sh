#!/usr/bin/env bash



echo -e "\033[0;32m"'                                             '"\033[0m"
echo -e "\033[0;32m"'    **************************************** '"\033[0m"
echo -e "\033[0;32m"'    *      Bodhi5: Machine Provisioner     * '"\033[0m"
echo -e "\033[0;32m"'    **************************************** '"\033[0m"


echo -e "\033[0;34mCloning .Dotfiles...\033[0m"
hash git >/dev/null && /usr/bin/env git clone https://github.com/euforic/.dotfiles ~/.dotfiles || {
  echo "git not installed"
  exit
}

# enter scripts dir
cd ~/.dotfiles/scripts

# allow execution
chmod +x setup.sh dev.sh apps.sh link.sh

echo -e "\033[0;34mRunning Base Setup\033[0m"
./setup.sh

echo -e "\033[0;34mInstalling Dev Tools\033[0m"
./dev.sh

echo -e "\033[0;34mInstalling Applications\033[0m"
./apps.sh

echo -e "\033[0;34mInstalling Fonts\033[0m"
./apps.sh

echo -e "\033[0;34mCreating Symlinks\033[0m"
./link.sh

# return to starting dir
cd -