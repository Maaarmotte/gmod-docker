#!/bin/bash
docker run \
    --rm \
    -it \
    -v marmottes-gmod-server-content:/home/steam/content \
    -v $PWD/scripts/download_content.sh:/home/steam/download_content.sh \
    marmottes-gmod-server:1.0.0 /home/steam/download_content.sh
