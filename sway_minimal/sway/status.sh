#!/bin/sh

date_time=$(date "+%R")

date_calendar=$(date "+%m/%d")

battery_capacity=$(cat /sys/class/power_supply/BAT1/capacity)

audio_volume=$(wpctl get-volume @DEFAULT_SINK@ | cut -d : -f 2)

echo  $audio_volume  $battery_capacity%  $date_calendar  $date_time
