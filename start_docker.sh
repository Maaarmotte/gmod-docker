#!/bin/bash
docker run \
    --name simple-gmod-server \
    --rm \
    -dit \
    -p 27015:27015/udp \
    -v simple-gmod-server-content:/home/steam/content \
    -v simple-gmod-server-addons:/home/steam/gmod/garrysmod/addons \
    -v simple-gmod-server-data:/home/steam/gmod/garrysmod/data \
    -v simple-gmod-server-cache-srcds:/home/steam/gmod/garrysmod/cache/srcds \
    -v $PWD/sv.db:/home/steam/gmod/garrysmod/sv.db \
    -v $PWD/cfg:/home/steam/gmod/garrysmod/cfg simple-gmod-server:1.0.0
