#!/bin/bash

d2=$(cat /opt/demoupdate/demoupdate/ver.md)
d1=$(cat /home/pi/demoapp/ver.md)

if [ $d2>$d1 ]; then
	echo "begin update..."
        unzip /opt/demoupdate/demoupdate/ud.zip
	mv /home/pi/demoapp/demoapp /home/pi/demoapp_bk
        cp /opt/demoupdate/demoupdate/demoapp /home/pi/demoapp/	
	echo "update finish"
fi


