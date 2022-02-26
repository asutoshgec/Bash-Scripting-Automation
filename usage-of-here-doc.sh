#! /bin/bash

cat << EOF
The user is $USER
The home for this $USER is $HOME
EOF

cat << Asutosh
The user is: $USER
The home for this user $USER is: $HOME
Asutosh

#we can also redirect the output to any file

cat << EOF > /tmp/demo.txt
The user is $USER
The home for this $USER is $HOME
EOF

#We can also use grep command

cat << EOF | grep -i user
The user is $USER
The home for this $USER is $HOME
EOF

