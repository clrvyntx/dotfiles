#!/bin/sh

date_time=$(date "+%R")

date_calendar=$(date "+%F")

battery_capacity=$(cat /sys/class/power_supply/BAT1/capacity)

battery_status=$(cat /sys/class/power_supply/BAT1/status)

audio_volume=$(wpctl get-volume @DEFAULT_SINK@ | cut -d : -f 2)

mic_volume=$(wpctl get-volume @DEFAULT_SOURCE@ | cut -d : -f 2)

echo  $mic_volume  $audio_volume  $battery_capacity% \($battery_status\)  $date_calendar  $date_time
