#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_zsh() {
  brew_install "ZSH" "zsh"
  brew_install "ZSH Completions" "zsh-completions"
  brew_install "ZSH AutoSuggestions" "zsh-autosuggestions"
  brew_install "ZSH Syntax Highlighting" "zsh-syntax-highlighting"
  
}

install_oh_my_zsh() {
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
}

configure_aliases() {
  cp zsh/* $HOME/.oh-my-zsh/custom
}

configure_pl10k() {
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {
  print_in_purple "\n   ZSH + PowerLevel10K\n\n"

  install_zsh
  install_oh_my_zsh
  configure_aliases
  configure_pl10k
}

main
