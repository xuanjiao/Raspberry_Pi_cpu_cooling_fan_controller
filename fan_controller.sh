#!/bin/bash
gpio mode 15 out


while [ 1 ]

do
read DATA < /sys/class/thermal/thermal_zone0/temp
TEMP=`expr ${DATA} / 1000`
echo -e "Temperature $TEMP" 

# Turn on the fan if the temperature is above 45 degree
if [ $TEMP -gt 45 ]; then
	gpio write 15 0 	
fi
#Turn off the fan if the temperature is less then 37 degree
if [ $TEMP -lt 37 ]; then
	gpio write 15 1
fi

sleep 30

done
