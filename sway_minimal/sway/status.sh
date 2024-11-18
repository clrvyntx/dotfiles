#!/bin/sh

date_formatted=$(date "+%F %H:%M")

battery_info=$(upower --show-info $(upower --enumerate |\
grep 'BAT') |\
egrep "state|percentage" |\
awk '{print $2}')

audio_volume=$(amixer -M get Master |\
awk '/Mono.+/ {print $6=="[off]" ?\
$4" ": \
$4" "}' |\
tr -d [])

echo $audio_volume $battery_info  $date_formatted
