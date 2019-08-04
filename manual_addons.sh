#!/bin/bash
docker run \
    --rm \
    -it \
    -v simple-gmod-server-addons:/home/steam/gmod/garrysmod/addons \
    -v $PWD/scripts/manual_addons.sh:/home/steam/manual_addons.sh \
    simple-gmod-server:1.0.0 /home/steam/manual_addons.sh
