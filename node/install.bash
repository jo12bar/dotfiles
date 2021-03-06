#!/usr/bin/env bash
source "$DOTFILES_ZSH/script/lib/info_printer.bash"

packages=(npm npm-check diff-so-fancy hotel tldr)

text_info node/install.bash "Installing the following global npm packages:"
for package in ${packages[*]}
do
  text_info node/install.bash "  - $package"
done

npm install --global ${packages[*]}
