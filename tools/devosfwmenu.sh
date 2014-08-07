#!/bin/sh

version=1.0

chmod -R +x tools
PATH=tools:$PATH

while :
do

  clear
  echo 
  echo "    __/\__ __/\__  __/\__  __/\__  __/\__    "
  echo "    \    / \    /  \    /  \    /  \    /    "
  echo "    /_  _\ /_  _\  /_  _\  /_  _\  /_  _\    "
  echo "      \/     \/      \/      \/      \/      "
  echo " =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" 
  echo "            Http://Devteam.vn                *"
  echo "              Devos ApkTool                  *"
  echo " =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" 
  echo "  1 -  Install Normal Framework Files"  
  echo "  2 -  Install Miui ROM Framework Files"
  echo "  3 -  Install Lewa ROM Framework Files"
  echo "  4 -  Install Touchwiz ROM Framework Files"
  echo "  5 -  Install Coloros ROM Framework File"
  echo "  6 -  Install HTC ROM Framework FIle"
  echo "  7 -  Install LG ROM framework File"
  echo "  ----------------------"
  echo "  x - Go Back to Main Menu"
  echo "  ----------------------"
  echo
  echo 
  echo -n "Enter option: "
  read opt
  
  if [ "$?" != "1" ]
  then
    case $opt in
      1) sh tools/devosfw.sh; echo "Done.";;
      2) sh tools/devosmiuifw.sh; echo "Done.";;
      3) sh tools/devoslewafw.sh; echo "Done.";;
      4) sh tools/devostouchwizfw.sh; echo "Done.";;
      5) sh tools/devoscolorosfw.sh; echo "Done.";;
      6) sh tools/devoshtcfw.sh; echo "Done";;
      7) sh tools/devoslgfw.sh; echo "Done.";;
      x) clear; exit;;
      *) echo "Invalid option"; continue;;
    esac
  fi

  tools/press_enter

done
