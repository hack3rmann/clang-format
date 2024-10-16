#!/usr/bin/bash

DESTINATION="$HOME/.clang-format"
PWD="$(pwd)"

if [[ -L $DESTINATION ]]; then
    echo "Removing existing configuration link at $DESTINATION"
    rm $DESTINATION
fi

if [[ -f $DESTINATION ]]; then
    echo "Backing up existing configuration to '$DESTINATION.bak'"
    mv "$DESTINATION" "$DESTINATION.bak"
fi

ln -sfT "$PWD/.clang-format" $DESTINATION
