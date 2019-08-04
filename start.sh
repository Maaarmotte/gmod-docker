#!/bin/bash
docker run \
    --name simple-gmod-server \
    --rm \
    -it \
    -p 27015:27015/udp \
    -v simple-gmod-server-content:/home/steam/content \
    -v simple-gmod-server-addons:/home/steam/gmod/garrysmod/addons \
    -v simple-gmod-server-data:/home/steam/gmod/garrysmod/data \
    -v simple-gmod-server-cache-srcds:/home/steam/gmod/garrysmod/cache/srcds \
    -v $PWD/sv.db:/home/steam/gmod/garrysmod/sv.db \
    -v $PWD/steam_api_key.txt:/home/steam/steam_api_key.txt \
    -v $PWD/scripts/run.sh:/home/steam/run.sh \
    -v $PWD/cfg:/home/steam/gmod/garrysmod/cfg simple-gmod-server:1.0.0
