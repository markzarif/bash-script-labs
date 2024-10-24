#!/bin/bash

update_system() 
{
    echo "Updating package list..."
    sudo apt update

    echo "Upgrading installed packages..."
    sudo apt upgrade -y

    echo "Cleaning up old packages..."
    sudo apt autoremove -y

    echo "Update process completed successfully."
}

update_system
