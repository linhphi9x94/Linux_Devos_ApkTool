#!/bin/sh
START=$(date +%s)
clear
clear
rm -rf out_apk
mkdir out_apk
java -jar tools/apktool-1.5.2.jar b Devos_Project_Apk
mv Devos_Project_Apk/dist/*.apk out_apk/
for file in out_apk/*; do java -jar tools/signapk.jar -w tools/testkey.x509.pem tools/testkey.pk8 $file $file; mv $file signed_apk/; done
echo "----------"
echo "Project Files Signed"
echo "Signed Files placed into final directory"
echo "----------"
END=$(date +%s)
ELAPSED=$((END - START))
E_MIN=$((ELAPSED / 60))
E_SEC=$((ELAPSED - E_MIN * 60))
printf "Elapsed: "
[ $E_MIN != 0 ] && printf "%d min(s) " $E_MIN
printf "%d sec(s)\n" $E_SEC
echo "Finished."

