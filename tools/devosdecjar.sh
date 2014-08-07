#!/bin/sh
START=$(date +%s)
clear
rm -rf Devos_Project_Jar
java -jar tools/apktool-1.5.2.jar d original_jar/*.* original_jar/Devos_Project_Jar
mv original_jar/Devos_Project_Jar Devos_Project_Jar
echo "----------"
echo "Decompiled .jar files now in 'Devos_Project_Jar' directory"
echo "If this fails Try option #3"
echo "----------"
END=$(date +%s)
ELAPSED=$((END - START))
E_MIN=$((ELAPSED / 60))
E_SEC=$((ELAPSED - E_MIN * 60))
printf "Elapsed: "
[ $E_MIN != 0 ] && printf "%d min(s) " $E_MIN
printf "%d sec(s)\n" $E_SEC
echo "Finished."
