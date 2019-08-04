#!/bin/bash
docker run \
    --rm \
    -it \
    -v simple-gmod-server-content:/home/steam/content \
    -v $PWD/scripts/download_content.sh:/home/steam/download_content.sh \
   simple-gmod-server:1.0.0 /home/steam/download_content.sh
