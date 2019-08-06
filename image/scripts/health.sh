#!/bin/bash
# When started with swarm, container has many IP addresses, but srcds binds to a single one!

# Find default interface
default_route=($(ip route show | grep default))
default_gateway=${default_route[4]}

# Find IP address used on this interface
interface=($(ip addr | grep global | grep $default_gateway))
ip=${interface[1]::-3}

echo -ne "\xFF\xFF\xFF\xFFTSource Engine Query\x00" | nc -w1 -u "$ip" "$1" | grep -q ^ && exit 0 || exit 1
