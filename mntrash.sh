#!/bin/sh
# Name: mntrash.sh
# Overview: Traash CUI menu (trash-cli) for ubuntu.
# Author: Sato Tomohiko 
# http://m.facebook.com/profile.php?id=100000998081624
# Last change: 2017/02/22 12:56:44.
# SEE:
# http://www.kingcomputerservices.com/unix_101/shell_programming_and_simple_menus_part_1.htm
##
# $sudo apt install trash-cli
# $trash-list
# $trash-empty
# $restore-trash
# $man trash
##
# _BEGIN_
while answer=[Qq]
do
echo "---[ Trash Menu (trash-cli) ]---"
echo " i | sudo apt install trash-cli"
echo " l | trash-list"
echo " e | trash-empty"
echo " r | restore-trash"
echo " m | man trash"
echo " s | shell"
echo " q | quit"
echo "--------------------------------"
echo "Please select [i,l,e,r,m,s,q]."
read answer
case $answer in
   I|i)   echo "You chose i."
		  sudo apt install trash-cli
		  ;;
   L|l)	   echo "You chose l."
		  trash-list
		  ;;
   E|e)   echo "You chose e."
		  trash-empty
		  ;;
   R|r)   echo "You chose r."
		  restore-trash
		  ;;
   M|m)   echo "You chose m."
		  man trash
		  ;;
   S|s)   echo "You chose s."
		  bash
		  ;;
   Q|q)   echo You chose q
		  exit
		  ;;
    *)    echo "You chose $answer."
		  ;;
esac
done
#_END_#
