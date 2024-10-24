#!/bin/bash

# Check if a username is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 username"
    exit 1
fi

USERNAME=$1

# Check if the user already exists by searching /etc/passwd
if grep -q "^$USERNAME:" /etc/passwd; then
    echo "User '$USERNAME' already exists."
    exit 1
fi

# Create the user with a home directory
sudo useradd -m "$USERNAME"

# Confirm the user was created
if [ $? -eq 0 ]; then
    echo "User '$USERNAME' created successfully."
else
    echo "Failed to create user '$USERNAME'."
    exit 1
fi
