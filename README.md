# gmod-docker
Minimal gmod docker to start a dedicated server with some content

### How to start the server
1) In Dockerfile, edit the MAXPLAYERS, COLLECTIONID, DEFAULTMAP environment variablles
1) Run ./build.sh
2) Put your Steam API key in steam_api_key.txt: `echo -n "XXXXXXXXXXX" > steam_api_key.txt`
3) Run ./start.sh

### How to mount content
1) (Optional) Edit ./scripts/download_content.sh
2) Run ./download_content.sh (NOT from ./scripts folder! The one in base folder)

### How to add GitHub addons
1) (Optional) Edit ./scripts/manual_addons.sh
2) Run ./manual_addons.sh (NOT from ./scripts folder! The one in base folder)

### Notes
- If you edit the PORT variable, you need to manually update the binding in Dockerfile and in start.sh
- You can rebuild the image without losing content/addons/data
