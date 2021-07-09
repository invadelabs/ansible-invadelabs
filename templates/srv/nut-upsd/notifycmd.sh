#!/bin/sh
EMAIL='drew@invadelabs.com'
FROM='nut-ups@invadelabs.com'

/usr/sbin/sendmail -v -f $FROM -S 192.168.1.125 $EMAIL <<EOF
Subject: NUT ALERT: $NOTIFYTYPE
From: $FROM

UPS: $UPSNAME
Alert type: $NOTIFYTYPE
EOF
