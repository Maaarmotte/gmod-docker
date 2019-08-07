# gmod-docker
Minimal gmod docker to start a dedicated server with some content

#### How to build the image
1) In image directory, in Dockerfile, edit the MAXPLAYERS, COLLECTIONID, DEFAULTMAP environment variablles
2) (Optional) Edit image/scripts/manual_addons.sh for addons that you would like to clone from GitHub
3) (Optional) Edit image/scripts/download_content.sh to download more content
4) Put your Steam API key in image/steam_api_key.txt: `echo -n "XXXXXXXXXXX" > steam_api_key.txt`
5) Run ./build.sh

#### How to download games content (tf and cstrike by default)
Run ./download_content.sh (NOT from ./image/scripts folder! The one in base folder), the image must be built first

#### How to add GitHub addons
Run ./manual_addons.sh (NOT from ./image/scripts folder! The one in base folder), the image must be built first

#### How to start in normal mode
Run ./start_docker.sh, there will be healthcheck but the container won't be restarted automatically

#### How to start in swarm mode
1) Create a new swarm: `docker swarm init --advertise-addr <LAN_IP>`
2) Run ./start_swarm.sh

Each time the container becomes unhealthy (crashed, frozen), a new container will be started to replace it

#### Notes
- If you edit the PORT variable, you need to manually update the binding in Dockerfile and in start.sh
- You can rebuild the image without losing content/addons/data
