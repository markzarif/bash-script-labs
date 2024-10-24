#!/bin/bash

copy_file_to_backup() {
    local source_file="$1"
    local backup_location="$2"
    cp "$source_file" "$backup_location"
}

read -p "Enter the path of the file to backup: " source_file
read -p "Enter the backup location: " backup_location

copy_file_to_backup "$source_file" "$backup_location"
