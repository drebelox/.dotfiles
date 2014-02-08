#!/usr/bin/env bash

IGNORE=(Readme.md scripts appdata)
DIR="$( cd -P "$( dirname "../${BASH_SOURCE[0]}" )" && pwd )/"


ignored() {
  for e in "${@:2}"; do [[ "$e" == "$1" ]] && return 0; done
  return 1
}

for file in $(ls ${DIR}); do
  ignored $file "${IGNORE[@]}"

  if [ $? -eq 0 ]; then
    continue
  fi
  echo -e "\033[0;34mCreating Symlink:\033[0m\n$DIR$file => ~/.$file"
  rm -r ~/.$file
  ln -s $DIR$file ~/.$file
done

# Copy Sublime Text 3 Settings
echo -e "\033[0;34mSymlinking\033[0m\n Sublime Text 3 Packages"
## remove existing folders
rm -rf ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages
rm -rf ~/Library/Application\ Support/Sublime\ Text\ 3/Packages
## symlink .dotfiles folders
ln -sf ${DIR}appdata/Sublime\ Text\ 3/Installed\ Packages ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages
ln -sf ${DIR}appdata/Sublime\ Text\ 3/Packages ~/Library/Application\ Support/Sublime\ Text\ 3/Packages

# Symlink oh-my-zsh and zsh settings
echo "\033[0;34mSymlinking\033[0m\n oh-my-zsh plugins"
rm -rf ~/.oh-my-zsh/custom/plugins
ln -sf ${DIR}appdata/oh-my-zsh/plugins ~/.oh-my-zsh/custom/plugins
