#!/bin/sh
START=$(date +%s)
clear
rm -rf Devos_Project_Jar
rm -rf Devos_Project_Apk
rm -rf original_apk
rm -rf original_jar 
rm -rf signed_apk
mkdir original_apk
mkdir original_jar
mkdir out_jar
mkdir out_apk
mkdir signed_apk
echo "----------"
echo "All project files and folders cleaned"
echo "----------"
END=$(date +%s)
ELAPSED=$((END - START))
E_MIN=$((ELAPSED / 60))
E_SEC=$((ELAPSED - E_MIN * 60))
printf "Elapsed: "
[ $E_MIN != 0 ] && printf "%d min(s) " $E_MIN
printf "%d sec(s)\n" $E_SEC
echo "Finished."
