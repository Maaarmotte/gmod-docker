#!/bin/bash
while (true); do
	/home/steam/gmod/srcds_run -game garrysmod -port $PORT -authkey $(cat /home/steam/steam_api_key.txt) +maxplayers $MAXPLAYERS +host_workshop_collection $COLLECTIONID +map $DEFAULTMAP
	sleep 5;
done;
