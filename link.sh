#!/usr/bin/env bash

IGNORE=(Readme.md install.sh setup.sh apps.sh link.sh appdata)
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/"


ignored() {
  for e in "${@:2}"; do [[ "$e" == "$1" ]] && return 0; done
  return 1
}

for file in $(ls); do
  ignored $file "${IGNORE[@]}"

  if [ $? -eq 0 ]; then
    continue
  fi
  echo -e "\033[0;34mCreating Symlink:\033[0m\n$DIR$file => .$file"
  rm -r ~/.$file
  ln -s $DIR$file ~/.$file
done

# Copy Sublime Text 3 Settings
echo -e "\033[0;34mSymlinking\033[0m\n Sublime Text 3 Packages"
rm -rf ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages
ln -sf ~/.dotfiles/appdata/Sublime\ Text\ 3/Installed\ Packages ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages
rm -rf ~/Library/Application\ Support/Sublime\ Text\ 3/Packages
ln -sf ~/.dotfiles/appdata/Sublime\ Text\ 3/Packages ~/Library/Application\ Support/Sublime\ Text\ 3/Packages

# Symlink oh-my-zsh and zsh settings
echo -e "\033[0;34mSymlinking\033[0m\n oh-my-zsh plugins"
rm -rf ~/.oh-my-zsh/custom/plugins
ln -sf ~/.dotfiles/appdata/oh-my-zsh/plugins ~/.oh-my-zsh/custom/plugins

echo -e "\033[0;34mInstalling\033[0m\n custom fonts"
# Copy fonts
cp -fr ~/.dotfiles/appdata/Fonts/* ~/Library/Fonts/
