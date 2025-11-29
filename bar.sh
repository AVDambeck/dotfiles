while true
do
	mpd=$(if [ "$(mpc current)" != "" ]; then echo \| $(mpc current -f %artist%) - $(mpc current -f %album%) - $(mpc current -f %title%) - $(mpc status  %currenttime%/%totaltime%) - $(mpc current -f %position%)/$(mpc playlist | wc -l); fi) \| 
	vol=$(pactl get-sink-volume @DEFAULT_SINK@ | head -n 1 | cut -d'/' -f2) 
	date=$(date +'%Y-%m-%d | %R'); 
	mem=$(free -h | awk '/Mem:/ {printf "%.1f/%.1fG\n", $3, $2}')
	cpu=$(top -bn1 | grep "Cpu(s)" | awk '{printf "%02d%%\n", int(100 - $8)}')

	echo -e $mpd \| $mem $cpu \| vol $vol \| $date;
	sleep 1;
done
