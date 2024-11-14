#!/bin/bash

clone_or_pull() {
    git clone "$1" "./$2" || (cd "$2"; git pull origin master; cd "..")
}

cd /home/steam/gmod/garrysmod/addons

# Add or remove addons here
clone_or_pull https://github.com/wiremod/wire.git wire
clone_or_pull https://github.com/wiremod/wire-extras.git wire-extras
clone_or_pull https://github.com/Metastruct/EPOE.git epoe
clone_or_pull https://github.com/notcake/gcompute.git gcompute
clone_or_pull https://github.com/notcake/glib.git glib
clone_or_pull https://github.com/notcake/gooey.git gooey
clone_or_pull https://github.com/notcake/vfs.git vfs
clone_or_pull https://github.com/notcake/gcodec.git gcodec
#clone_or_pull https://github.com/Noiwex/luadev.git luadev
clone_or_pull https://github.com/thegrb93/StarfallEx.git starfallex
clone_or_pull https://github.com/wiremod/advdupe2.git advdupe2
clone_or_pull https://github.com/TeamUlysses/ulib.git ulib
clone_or_pull https://github.com/TeamUlysses/ulx.git ulx
clone_or_pull https://github.com/TeamUlysses/utime.git utime
clone_or_pull https://github.com/Nebual/NadmodPP.git nadmodpp
clone_or_pull https://github.com/Maaarmotte/AirboatMod.git airboatmod

