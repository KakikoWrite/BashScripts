#!/bin/sh
# vim: set ts=4 sts=2 sw=2 tw=0 ff=unix ft=sh fdm=marker wrap noai : 
# Name: mnusb.sh
# Overview: USB mount & unmount CUI menu for ubuntu.
# Author: Sato Tomohiko ■  佐藤 智彦
# http://m.facebook.com/profile.php?id=100000998081624
# Last change: 2017/02/24 12:06:43.
# SEE:
# http://www.kingcomputerservices.com/unix_101/shell_programming_and_simple_menus_part_1.htm
##
# _BEGIN_
SCRIPT_NAME=$0
clear
printf "pmount version " && pmount --version
while answer=[Qq]
do
echo "-----[ USB Menu for Ubuntu ( $0 ) ]-----------------"
echo "[0-7]| !sudo umount /media/usb[0-7]"
echo "  8  | !dmesg | grep \"usb\" | less"
echo "  9  | !ls -l /media/ | ls /dev/sd*"
ls /dev/sd*
#echo "  9  | !ls -l /media/ | ls /dev/hd*"
#ls /dev/hd*
echo "  e  | Edit this menu ( $0 ) with vim"
echo "  h  | !pmount --help"
echo "  m  | !man pmount"
echo "  s  | shell (Bash)"
echo "  q  | quit"
echo "-----[ \$sudo apt install pmount usbmount ]----------------"
echo "Please select [0-9, e, h, m, s, q]:"
read answer
case $answer in

   0)   echo "You chose 0."
        sudo umount /media/usb0
		ls -l /media/usb0
        read -n 1 -s -p "Press any key to continue"; echo
		;;
   1)   echo "You chose 1."
        sudo umount /media/usb1
		ls -l /media/usb1
        read -n 1 -s -p "Press any key to continue"; echo
		;;
   2)   echo "You chose 2."
        sudo umount /media/usb2
		ls -l /media/usb2
        read -n 1 -s -p "Press any key to continue"; echo
		;;
   3)   echo "You chose 3."
        sudo umount /media/usb3
		ls -l /media/usb3
        read -n 1 -s -p "Press any key to continue"; echo
		;;
   4)   echo "You chose 4."
        sudo umount /media/usb4
		ls -l /media/usb4
        read -n 1 -s -p "Press any key to continue"; echo
		;;
   5)   echo "You chose 5."
        sudo umount /media/usb5
		ls -l /media/usb5
        read -n 1 -s -p "Press any key to continue"; echo
		;;
   6)   echo "You chose 6."
        sudo umount /media/usb6
		ls -l /media/usb6
        read -n 1 -s -p "Press any key to continue"; echo
		;;
   7)   echo "You chose 7."
        sudo umount /media/usb7
		ls -l /media/usb7
        read -n 1 -s -p "Press any key to continue"; echo
		;;
   8)   echo "You chose 8."
		dmesg | grep "usb" | less
		;;
   9)   echo "You chose 9."
		echo "!ls -l /media/"
        echo "/*------------------------------------------------*"
		ls -l /media/
		echo " *------------------------------------------------*/"
        read -n 1 -s -p "Press any key to continue"; echo
		clear
        ls /dev/sd*
		;;
   E|e)   echo "You chose e."
		  vim $0
		;;
   H|h)   echo "You chose h."
		  pmount --help
		;;
   M|m)   echo "You chose m."
		  man pmount
		;;
   S|s)   echo "You chose s."
          echo "Mount Ex.) \$sudo mount -t vfat /dev/sd[a-z0-9] /media/usb[0-7]"
		  bash
		;;
   Q|q)   echo "You chose q."
		  exit
		;;
    *)    echo "You chose $answer."
        read -n 1 -s -p "Press any key to continue"; echo
		;;
esac
done
#_END_
