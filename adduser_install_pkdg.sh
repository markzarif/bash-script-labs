#!/bin/bash

read -p "write th user name :" USERNAME


# Check if the user already exists by searching /etc/passwd
if grep -q "^$USERNAME:" /etc/passwd; then
    echo "User '$USERNAME' already exists."
    exit 1
else
	sudo useradd -m -d /home/$USERNAME $USERNAME
fi

echo

# Confirm the user was created
if grep -q "^$USERNAME:" /etc/passwd; then
    echo "User '$USERNAME' created succesfuly."
    exit 1
else
    echo "ooooops user not created try again"


echo 

# install package
read -p echo "tell me name of pact you want installed" packet_name
if dpkg -l | grep -q "$packet_name"; then
    echo "packet already installed "
    exit 1
else
    sudo apt install $packet_name
    
fi


