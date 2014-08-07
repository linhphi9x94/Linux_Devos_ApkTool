#!/bin/sh
START=$(date +%s)
clear
rm -rf out
mkdir out
java -jar tools/apktool-1.5.2.jar b Devos_Project_Jar
mv Devos_Project_Jar/dist/*.jar out_jar/
echo "----------"
echo "Devos_Project_Jar unsigned .jar placed into 'out_jar' directory"
echo "----------"
END=$(date +%s)
ELAPSED=$((END - START))
E_MIN=$((ELAPSED / 60))
E_SEC=$((ELAPSED - E_MIN * 60))
printf "Elapsed: "
[ $E_MIN != 0 ] && printf "%d min(s) " $E_MIN
printf "%d sec(s)\n" $E_SEC
echo "Finished."
