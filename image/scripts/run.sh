#!/bin/bash
while (true); do
	/home/steam/steamcmd.sh +login anonymous +force_install_dir gmod +app_update 4020 validate +quit
	/home/steam/manual_addons.sh
	/home/steam/gmod/srcds_run -insecure -game garrysmod -port $PORT -authkey $(cat /home/steam/steam_api_key.txt) +sv_setsteamaccount $GSLT +maxplayers $MAXPLAYERS +host_workshop_collection $COLLECTIONID +map $DEFAULTMAP -ip 0.0.0.0
	sleep 5;
done;
