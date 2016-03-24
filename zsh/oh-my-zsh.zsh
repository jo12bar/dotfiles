# Setup oh-my-zsh and antigen

# Path to your oh-my-zsh installation
export ZSH=$HOME/.oh-my-zsh

HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

source $ZSH/oh-my-zsh.sh

# setup antigen
source ~/.antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle npm
antigen bundle sudo
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle unixorn/autoupdate-antigen.zshplugin

antigen apply
