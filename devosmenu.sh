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
  echo "             Devos ApkTool v1.5.2            *"
  echo " =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
  echo "  1 - Install Framework Files		     *"
  echo " =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
  echo "  2 - Decompile apk			     *"
  echo "  3 - Compile apk			     *"
  echo "  4 - Compile and Sign Apk file		     *"
  echo " =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
  echo "  5 - Decompile jar 			     *"
  echo "  6 - Compile jar 			     *"
  echo " =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
  echo "  CL - Clean All Project		     *"
  echo " =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
  echo " =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
  echo "  x - Exit				     *"
  echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=="
  echo 
  echo -n "Enter option: "
  read opt
  
  if [ "$?" != "1" ]
  then
    case $opt in
      1) sh tools/devosfwmenu.sh; echo "Done.";;
      2) sh tools/devosdecapk.sh; echo "Done.";;     
      3) sh tools/devoscomapk.sh; echo "Done.";;
      4) sh tools/devossignapk.sh; echo "Done.";;
      5) sh tools/devosdecjar.sh; echo "Done.";;
      6) sh tools/devoscomjar.sh; echo "Done.";;
      CL) sh tools/devoscleanup.sh; echo "Done.";;
      x) clear; echo; echo "Goodbye."; echo; exit 1;;
      *) echo "Invalid option"; sleep 1; continue;;
    esac
  fi

  tools/press_enter
done

