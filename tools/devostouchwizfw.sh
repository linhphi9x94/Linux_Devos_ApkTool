#!/bin/sh
START=$(date +%s)
cd ~/Devos-ApkTool/framework
java -jar apktool-1.5.2.jar if framework-res.apk
java -jar apktool-1.5.2.jar if twframework-res.apk

echo "----------"
echo "Other framework files installed to ~/apkTool/framework"
echo "----------"
END=$(date +%s)
ELAPSED=$((END - START))
E_MIN=$((ELAPSED / 60))
E_SEC=$((ELAPSED - E_MIN * 60))
printf "Elapsed: "
[ $E_MIN != 0 ] && printf "%d min(s) " $E_MIN
printf "%d sec(s)\n" $E_SEC
echo "Finished."
