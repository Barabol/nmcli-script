#!/bin/bash
nmcli -f IN-USE,SSID,BARS,RATE device wifi list
echo -n "Name/SSID:"
read nazwa
echo -n "Password:"
read -s input
echo ""
nmcli device wifi connect $nazwa password $input
#echo "$nazwa:$input"
