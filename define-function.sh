#!/usr/bin/env bash

read_inputs()
{
    read -p "Enter the first number" num1
    read -p "Enter the second number" num2
}

addition()
{
    add=$((num1+num2))
    echo "THe addition of two numbers is: $add"
}

subtraction()
{
    sub=$((num1-num2))
    echo "Subtraction is: $sub"
}

#Then we need to call the functions.First we need to call the read_input function

read_inputs

addition

subtraction
