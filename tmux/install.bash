#!/usr/bin/env bash
source "${DOTFILES_ZSH}/script/lib/info_printer.bash"

if [ -d "$HOME/.tmux/plugins/tpm" ]; then
  text_info tmux/install.bash "Looks like tpm is already installed. Ignoring."
  text_info tmux/install.bash "To update, do 'prefix + U' within tmux."
else
  text_info tmux/install.bash "› git clone https://github.com/tmux-plugins/tpm.git $HOME/.tmux/plugins/tpm"
  git clone https://github.com/tmux-plugins/tpm.git $HOME/.tmux/plugins/tpm
fi
