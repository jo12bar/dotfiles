# Setup oh-my-zsh and antigen
# setup antigen
source ~/.antigen/antigen.zsh

# Set oh-my-zsh variables
HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# Load oh-my-zsh
antigen use oh-my-zsh

# Load oh-my-zsh plugins
antigen bundles <<EOBUNDLES
  git
  npm
  sudo
  zsh-users/zsh-syntax-highlighting
  unixorn/autoupdate-antigen.zshplugin
EOBUNDLES

# Done!
antigen apply
