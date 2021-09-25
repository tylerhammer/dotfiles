#!/bin/bash
# Applications that just need to be installed
# These typically do not require any configuration via automation

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Applications via Cask\n\n"

brew_install "1Password" "1password" "--cask"
brew_install "1Password-CLI" "1password-cli" "--cask"
brew_install "Alfred" "alfred" "--cask"
brew_install "Discord" "discorD" "--cask"
brew_install "Docker Desktop" "docker" "--cask"
brew_install "Dropbox" "dropbox" "--cask"
brew_install "Google Chrome" "google-chrome" "--cask"
brew_install "iTerm2" "iterm2" "--cask"
brew_install "Notion" "notion" "--cask"
brew_install "Postman" "postman" "--cask"
brew_install "Proxyman" "proxyman" "--cask"
brew_install "Pycharm" "pycharm" "--cask"
brew_install "Setapp" "setapp" "--cask"
brew_install "Spotify" "spotify" "--cask"
brew_install "Table Plus" "tableplus" "--cask"
