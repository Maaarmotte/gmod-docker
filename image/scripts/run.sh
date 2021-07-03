#!/bin/bash
while (true); do
	/home/steam/manual_addons.sh
	/home/steam/gmod/srcds_run -insecure -game garrysmod -port $PORT -authkey $(cat /home/steam/steam_api_key.txt) +maxplayers $MAXPLAYERS +host_workshop_collection $COLLECTIONID +map $DEFAULTMAP -ip 0.0.0.0
	sleep 5;
done;
