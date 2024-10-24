#!/bin/bash

read -p "Enter the username: " USERNAME
read -p "Enter the directory path: " DIRECTORY

if ! id "$USERNAME" &>/dev/null; then
    echo "User '$USERNAME' does not exist."
    exit 1
fi

sudo chown "$USERNAME" "$DIRECTORY"
echo "user '$USERNAME' have been modified on directory '$DIRECTORY'."
