#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Language & Region\n\n"

execute "defaults write -g AppleLanguages -array 'en-US' 'ko-US'" \
    "Set language"