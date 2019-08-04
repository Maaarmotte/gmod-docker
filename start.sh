#!/bin/bash
docker run \
    --rm \
    -it \
    -p 27015:27015/udp \
    -v marmottes-gmod-server-content:/home/steam/content \
    -v marmottes-gmod-server-addons:/home/steam/gmod/garrysmod/addons \
    -v marmottes-gmod-server-data:/home/steam/gmod/garrysmod/data \
    -v marmottes-gmod-server-cache-srcds:/home/steam/gmod/garrysmod/cache/srcds \
    -v $PWD/sv.db:/home/steam/gmod/garrysmod/sv.db \
    -v $PWD/steam_api_key.txt:/home/steam/steam_api_key.txt \
    -v $PWD/cfg:/home/steam/gmod/garrysmod/cfg marmottes-gmod-server:1.0.0
