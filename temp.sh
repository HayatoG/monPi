#!/bin/sh

date | tr '\n' ' ' >> temperatura.txt; vcgencmd measure_temp >> temperatura.txt 
#echo 'Temperatura: ' 
#tail -1 temperatura.txt #| grep -f1 temp
tail -1 temperatura.txt | cut -d "=" -f2 | awk '{print "Temperatura: " $1 }'

