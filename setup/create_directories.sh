#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

create_directories() {

    declare -a DIRECTORIES=(
        "$HOME/Documents/development"
        "$HOME/Documents/development/scripts"
        "$HOME/Documents/development/sendbird"
        "$HOME/Documents/development/sendbird/internal"
        "$HOME/Documents/development/sendbird/samples"
        "$HOME/Documents/development/sendbird/scripts"
        "$HOME/Documents/development/sendbird/soleng"
    )

    for i in "${DIRECTORIES[@]}"; do
        mkd "$i"
    done

}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {
    print_in_purple "\n • Create directories\n\n"
    create_directories
}

main
