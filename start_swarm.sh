#!/bin/bash
docker service rm simple-gmod-server
docker service create \
	--name simple-gmod-server \
	--hostname simple-gmod-server \
	-p 27015:27015/udp \
	--replicas 1 \
	-dt \
	--mount type=volume,src=simple-gmod-server-content,dst=/home/steam/content \
	--mount type=volume,src=simple-gmod-server-addons,dst=/home/steam/gmod/garrysmod/addons \
	--mount type=volume,src=simple-gmod-server-data,dst=/home/steam/gmod/garrysmod/data \
	--mount type=volume,src=simple-gmod-server-cache-srcds,dst=/home/steam/gmod/garrysmod/cache/srcds \
	--mount type=bind,src=$PWD/mounted_addon,dst=/home/steam/gmod/garrysmod/addons/mounted_addon \
	--mount type=bind,src=$PWD/sv.db,dst=/home/steam/gmod/garrysmod/sv.db \
	--mount type=bind,src=$PWD/cfg,dst=/home/steam/gmod/garrysmod/cfg \
	simple-gmod-server:1.0.0

