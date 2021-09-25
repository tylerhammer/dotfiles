#!/bin/bash
# Applications that just need to be installed
# These typically do not require any configuration via automation

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Applications via Cask\n\n"

brew_install "1Password" "1password" "--cask --no-quarantine"
brew_install "1Password-CLI" "1password-cli" "--cask --no-quarantine"
brew_install "Alfred" "alfred" "--cask --no-quarantine"
brew_install "Discord" "discorD" "--cask --no-quarantine"
brew_install "Docker Desktop" "docker" "--cask --no-quarantine"
brew_install "Dropbox" "dropbox" "--cask --no-quarantine"
brew_install "Google Chrome" "google-chrome" "--cask --no-quarantine"
brew_install "iTerm2" "iterm2" "--cask --no-quarantine"
brew_install "JDK" "temurin" "--cask --no-quarantine"
brew_install "Notion" "notion" "--cask --no-quarantine"
brew_install "Postman" "postman" "--cask --no-quarantine"
brew_install "Proxyman" "proxyman" "--cask --no-quarantine"
brew_install "Pycharm" "pycharm" "--cask --no-quarantine"
brew_install "Setapp" "setapp" "--cask --no-quarantine"
brew_install "Spotify" "spotify" "--cask --no-quarantine"
brew_install "Table Plus" "tableplus" "--cask --no-quarantine"
