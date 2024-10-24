#!/bin/bash

echo "welcome mark"

read -p "write the process you need search about" PROCESS

if ps -aux | grep -q "$PROCESS";
then
    echo "process is running"
else
    echo "process is not running!"
fi
