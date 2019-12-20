#!/bin/sh

date | tr '\n' ' ' >> temperatura.txt; vcgencmd measure_temp >> temperatura.txt 

##Caso seja executado manualmente, exibe no shell apenas a temperatura atual da CPU
tail -1 temperatura.txt | cut -d "=" -f2 | awk '{print "Temperatura: " $1 }'

