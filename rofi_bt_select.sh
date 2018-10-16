#!/bin/bash

devices=$(bluetoothctl devices)
select=$(echo "$devices" | cut -d' ' -f3- | rofi -dmenu -p "Select device to connect to" -location 3 -width 50)
adr=$(echo "$devices" | grep "$select" | cut -d ' ' -f2)
if [ $adr != "" ]; then
    bluetoothctl connect "$adr"
fi
