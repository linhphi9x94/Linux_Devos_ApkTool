#!/bin/sh
START=$(date +%s)
clear
rm -rf out_apk
mkdir out_apk
java -jar tools/apktool-1.5.2.jar b Devos_Project_Apk
mv Devos_Project_Apk/dist/*.apk out_apk/
echo "----------"
echo "Devos_Project_Apk unsigned apk placed into 'out_apk' directory"
echo "----------"
END=$(date +%s)
ELAPSED=$((END - START))
E_MIN=$((ELAPSED / 60))
E_SEC=$((ELAPSED - E_MIN * 60))
printf "Elapsed: "
[ $E_MIN != 0 ] && printf "%d min(s) " $E_MIN
printf "%d sec(s)\n" $E_SEC
echo "Finished."
