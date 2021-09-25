#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Git\n\n"

brew_install "Git" "git"
brew_install "GitHub CLI" "gh"

# configure git
git config --global user.name "Tyler Hammer"
git config --global user.email "dev@tylerhammer.com"
gh config set git_protocol "ssh"
