#!/bin/sh
 
common() {
echo -n "{"
echo -n "\"name\":\"$name\","
echo -n "\"full_text\":\" $stat\","
echo -n "},"
}
 
battery0() {
local name="battery0"
prct=$(cat /sys/class/power_supply/BAT1/capacity)
chrg=$(cat /sys/class/power_supply/BAT1/status)
icon=" "
case $chrg in
"Charging")  icon="" ;;
"Full") icon="" ;;
esac 
local stat=$icon\ $prct%
common
}
 
mydate() {
local name="id_time"
local stat=$(date "+%F %H:%M") 
common
}
 
volume() {
local name="id_volume"
vol=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | cut -d : -f 2)
vol="$vol"
local stat=${vol} 
common
}
 
echo '{ "version": 1 , "click_events":false}'
echo '[[],'
 
while :
do
echo -n "["
battery0
volume
mydate
echo -n "],"
sleep 1
done
