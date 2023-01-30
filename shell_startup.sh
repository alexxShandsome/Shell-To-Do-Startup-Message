to_do_file=

if [[ $(date '+%a') == "Sun" ]]; then
	# Sunday reminder to rest
	sunday_statement="It's Sunday my dude. Get some rest. The world is gonna end soon, so enjoy your life once in a while. Here is some random quote, I hope it's motivational"
	quote=$(fortune)

	echo -e "${sunday_statement}

	\" ${quote} \"
	" | cowsay
elif [ -s $to_do_file ]; then
	# print contents of the to do file
	cat $to_do_file | cowsay -W 80

	# Unfinished To Do/s counter
	string_matches=0
	red_text='\033[1;31m'
	color_off='\033[0m'

	while read -r line; do
		if [[ $line == *"- "* ]]; then
			let string_matches++
		fi
	done <$to_do_file
	echo -e "${red_text}[$string_matches]${color_off} Unfinished Tasks\n"
else
	# if to_do_file is empty then random quotes will print
	fortune | cowsay
fi

