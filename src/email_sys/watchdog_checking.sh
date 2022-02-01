#!/bin/bash
source ../venv/bin/activate
SERVICE="imap_fetch.py"
i=0
for((;;))
do
    if pgrep -x "$SERVICE" >/dev/null
    then
        echo "$SERVICE is running"
    else
        i=i+1
        if i>20
        then
            sudo reboot -f
        fi
        echo "$SERVICE stopped restarting it"
        python /home/xg/ws/src/aioimaplib/email_sys/imap_fetch.py
        # uncomment to start nginx if stopped
        # systemctl start nginx
        # mail  
    fi
done
