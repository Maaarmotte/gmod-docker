FROM debian:stretch

# Install some important libs (one per line for readability)
RUN apt-get update && apt-get install -y wget git lib32gcc1 lib32stdc++6 lib32tinfo5 netcat

# Create new user and use it
RUN useradd -ms /bin/bash steam
USER steam
WORKDIR /home/steam

# Install steamcmd and garry's mod server
RUN wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz && \
    tar -xvf steamcmd_linux.tar.gz && \
    chmod +x steamcmd.sh && \
    ./steamcmd.sh +login anonymous +force_install_dir gmod +app_update 4020 validate +quit && \
    rm -r /home/steam/gmod/garrysmod/cfg && \
    rm -r /home/steam/gmod/garrysmod/addons

COPY scripts/* /home/steam/
COPY steam_api_key.txt /home/steam/steam_api_key.txt

# Define basic srcds config
ENV PORT="27015"
ENV MAXPLAYERS="16"
ENV COLLECTIONID="1824247983"
ENV DEFAULTMAP="gm_flatgrass"

# Create the volume directories with the right user
RUN mkdir /home/steam/content && \
    mkdir /home/steam/gmod/garrysmod/addons && \
    mkdir /home/steam/gmod/garrysmod/data && \
    mkdir -p /home/steam/gmod/garrysmod/cache/srcds

WORKDIR /home/steam
HEALTHCHECK --interval=10s --timeout=15s --start-period=120s --retries=4 CMD /home/steam/health.sh "27015"
EXPOSE $PORT/udp
CMD ["/bin/bash", "-c", "/home/steam/run.sh"]
