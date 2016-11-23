#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

if [[ -s "${ZDOTDIR:-$HOME}/.tmuxinator.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.tmuxinator.zsh"
fi
if [[ -s "${ZDOTDIR:-$HOME}/.zaliases" ]]; then
  source "${ZDOTDIR:-$HOME}/.zaliases"
fi
if [[ -s "${ZDOTDIR:-$HOME}/.secrets" ]]; then
  source "${ZDOTDIR:-$HOME}/.secrets"
fi

eval $(thefuck --alias)

fpath=(~/.zsh $fpath)
alias config='/usr/bin/git --git-dir=${ZDOTDIR:-$HOME}/.cfg --work-tree=${ZDOTDIR:-$HOME}/'
