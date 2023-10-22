date_fmt=$(date "+%a %F %H:%M")
bat_cap=$(</sys/class/power_supply/BAT0/capacity)

bat_stat=$(</sys/class/power_supply/BAT0/status)
if [[ $bat_stat != 'Discharging' ]]; then
  charging='~'
else
  charging=''
fi

echo $charging$bat_cap $date_fmt
