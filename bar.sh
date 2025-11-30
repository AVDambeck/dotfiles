while true
do

	if mpc status | grep -q "playing"; then mpd="| $(mpc current -f %artist%) - $(mpc current -f %album%) - $(mpc current -f %title%) - $(mpc status  %currenttime%/%totaltime%) - $(mpc current -f %position%)/$(mpc playlist | wc -l)"; else mpd=""; fi
	vol=$(pactl get-sink-volume @DEFAULT_SINK@ | head -n 1 | cut -d'/' -f2) 
	date=$(date +'%Y-%m-%d | %R'); 
	mem=$(free -h | awk '/Mem:/ {printf "%.1f/%.1fG\n", $3, $2}')
	cpu=$(top -bn1 | grep "Cpu(s)" | awk '{printf "%03d%%\n", int(100 - $8)}')

	echo -e $mpd \| $mem $cpu \| vol $vol \| $date;
	sleep 0.3;
done
