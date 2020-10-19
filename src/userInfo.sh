#!/bin/bash

if [ "$1" == "" ];
then
   echo 'Usage: ./userInfo.sh <username>'
elif cat /etc/passwd | grep -swq $1
then
   echo 'Home directory usage:'
   sudo du -sh /home/$1
   printf "********************************\n"
   echo 'First 10 files:'
   ls /home/$1
   printf "********************************\n"
else
   echo 'ERROR: User' '"'$1'"' 'not found!'
fi
