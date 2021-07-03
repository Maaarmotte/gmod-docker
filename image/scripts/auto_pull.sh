#!/bin/bash

clone_or_pull() {
    git clone "$1" "./$2" || (cd "$2"; git pull origin master; cd "..")
}

cd /home/steam/gmod/garrysmod/addons

while (true); do
	nc -l -p 28015 -c 'echo "HTTP/1.1 200 OK\r\n\r\nOK"'

	if [ $? -ne 0 ]; then
		break;
	fi

	echo "Updating addons..."
	clone_or_pull https://github.com/Maaarmotte/AirboatMod.git airboatmod;
done
