date_fmt=$(date "+%a %F %H:%M")
battery=$(</sys/class/power_supply/BAT0/capacity)

echo $battery $date_fmt
