#!/bin/bash

echo "welcome guys"
read -p "tell me name of process to you need chech them : " process_name 


if ps -aux | grep $process_name >> /home/kali/Desktop/log.txt 
then
echo "this result found in log file on desktop"
