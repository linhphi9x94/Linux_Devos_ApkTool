#!/bin/sh
START=$(date +%s)
clear
rm -rf Devos_Project_Apk
java -jar tools/apktool-1.5.2.jar d original_apk/*.* original_apk/Devos_Project_Apk
mv original_apk/Devos_Project_Apk Devos_Project_Apk
echo "----------"
echo "Decompiled files now in 'Devos_Project_Apk' directory"
echo "----------"
END=$(date +%s)
ELAPSED=$((END - START))
E_MIN=$((ELAPSED / 60))
E_SEC=$((ELAPSED - E_MIN * 60))
printf "Elapsed: "
[ $E_MIN != 0 ] && printf "%d min(s) " $E_MIN
printf "%d sec(s)\n" $E_SEC
echo "Finished."
