#!/bin/bash

WIFI_NAME=$(nmcli device wifi | rofi -dmenu -p "Selection network to connect to" -location 3 | sed 's/\ \ \ */,/g' | cut -d, -f2)
echo "$WIFI_NAME"

CONNECTIONS=$(nmcli connection show | grep -w "$WIFI_NAME")
echo "$CONNECTIONS"

# If not empty, connect to network, else connect to new network
if [[ ! -z $CONNECTIONS ]]; then
    echo "Not empty"
    $(nmcli connection up "$WIFI_NAME")
else
    echo "empty"
    PASSW=$(rofi -dmenu -p "password: " -lines 0 -location 3)
    echo "$PASSW"
    $(nmcli device wifi connect "$WIFI_NAME" password "$PASSW")
fi
