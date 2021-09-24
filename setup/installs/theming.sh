#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

download_dracula() {
  local tmpFile=""
  tmpFile="$(mktemp /tmp/XXXXX)"

  download "https://s3.amazonaws.com/cyanlab.io/setup/macOS/DraculaPro.zip" "$tmpFile"
  extract "$tmpFile" "$HOME/Documents/Development/dotfiles/dracula"

}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {
  mkdir "$HOME/Documents/Development/dotfiles/dracula"
  download_dracula
  brew_install "Jetbrains MONO" "font-jetbrains-mono" "--cask" "homebrew/cask-fonts"
}

main