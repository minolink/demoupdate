#!/bin/bash

d2=$(cat /opt/demoupdate/demoupdate/ver.md)
d1=$(cat /home/pi/demoapp/ver.md)

if [ $d2 -gt $d1 ]; then
	echo "begin update..."
	unzip -o /opt/demoupdate/demoupdate/ud.zip -d /opt/demoupdate/demoupdate/
	mv /home/pi/demoapp/demoapp /home/pi/demoapp/demoapp_bk
        cp /opt/demoupdate/demoupdate/demoapp /home/pi/demoapp/
        mv /home/pi/demoapp/ver.md /home/pi/demoapp/ver_bk.md
        cp /opt/demoupdate/demoupdate/ver.md /home/pi/demoapp	
	echo "update finish"
	sudo reboot
fi


