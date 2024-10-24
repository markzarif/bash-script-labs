#!/bin/bash
add() 
{
    echo "the resault  $1 addiation $2 equal $(($1 + $2))"
}
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2
add "$num1" "$num2"
