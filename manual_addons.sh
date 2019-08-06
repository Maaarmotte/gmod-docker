#!/bin/bash
docker run \
    --rm \
    -it \
    -v simple-gmod-server-addons:/home/steam/gmod/garrysmod/addons \
    simple-gmod-server:1.0.0 /home/steam/manual_addons.sh
