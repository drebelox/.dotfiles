#!/usr/bin/env bash

IGNORE=(Readme.md install.sh setup.sh link.sh appdata)
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
  rm -r ~/.$file
  ln -s $DIR$file ~/.$file
done

# Copy Sublime Text 3 Settings
cp -fr ~/.dotfiles/appdata/Sublime\ Text\ 3/* ~/Library/Application\ Support/Sublime\ Text\ 3/
cp -fr ~/.dotfiles/appdata/Fonts/* ~/Library/Fonts/