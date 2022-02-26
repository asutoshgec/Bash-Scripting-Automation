#! /usr/bin/env bash
#To comment multiple lines at a time.

<<mycode
#my_name="Asutosh"
read -p "Enter the name: " my_name
#If we will not provide any variable to the read command, then the value will be automatically stored in "REPLY"
#I want to convert the string into upper case and print that string
Name_Upper=$(echo "$my_name" | tr [a-z] [A-Z])
echo "The Name in Upper case is: $Name_Upper" #echo is called the output command for the shell script
mycode

echo $0
echo $1
echo $2
echo $3
echo $10 #It will consider as $1 and 0
echo ${12}

echo "The command line arguments are getting passed $#"

echo "All the command line arguments are $@"

#or
echo "All the command line arguments are $*"
