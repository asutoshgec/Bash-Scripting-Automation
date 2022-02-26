#! /usr/bin/env bash

read -p "Enter the number num1: " a
read -p "Enter the number num2: " b
read -p "Enter the option(1.Addition,2.Subtraction,3.Multiplication,4.Division) " opt
case $opt in
      1)
           echo "You have selected addition"
           echo "The addition of $a and $b is $((a+b))"
           ;;
      2)
           echo "You have selected Subtraction"
           echo "The Subtraction of $a and $b is $((a-b))"
           ;;

      3)   
           echo "You have selected Multiplication"
           echo "The multiplication of $a and $b is $((a*b))"
           ;;
      4)
           echo "Yopu have selected division"
           echo "The division of $a and $b is $((a/b))"
           ;;
      *)
           echo "You have entered the wrong option"
           ;;

esac