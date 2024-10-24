#!/bin/bash
check-file() {
    if [ -e "$1" ]; then
        echo "The file '$1' exists"
    else
        echo "The file '$1' does not exist"
    fi
}


read -p "what the file want to check: " path
check-file $path
