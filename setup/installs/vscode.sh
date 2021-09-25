#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

install_plugin() {
    execute "code --install-extension $2" "$1 (plugin)"
}

configure_settings() {

}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Visual Studio Code\n\n"                                :

# Install VSCode
brew_install "Visual Studio Code" "visual-studio-code" "--cask"

printf "\n"

# Install the VSCode plugins
install_plugin "Bracket Pair Colorizer 2" "bracket-pair-colorizer-2"
install_plugin "Discord Presence" "icrawl.discord-vscode"
install_plugin "ESLint" "dbaeumer.vscode-eslint"
install_plugin "Material Icons" "pkief.material-icon-theme"
install_plugin "NPM Intellisense" "leizongmin.node-module-intellisense"
install_plugin "Path Intellisense" "christian-kohler.path-intellisense"
install_plugin "Prettier" "esbenp.prettier-vscode"
install_plugin "React Snippets" "dsznajder.es7-react-js-snippets"
install_plugin "Dracula Pro" "$HOME/Documents/Development/dotfiles/dracula/dracula-pro.vsix"

# Copy settings
cp "vscode/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"

# Close VSCode
osascript -e 'quit app "Visual Studio Code"'