#!/bin/bash
# This script is supposed to be executed with sudo

# Check if the NAS is alive and try to mount the NFS folder
node=NFS-Server;
nfs_origin=/nfs/chibchohaec
nfs_destination=/mnt/chibchohaec

echo -n "Mounting NFS... ";
p=$( ping -c 1 $node &> /dev/null );
if [ $? -eq 0 ]; then
  mount ${node}:${nfs_origin} ${nfs_destination} &> /dev/null
  echo "OK"; 
else
  echo "NAS not responding!";
fi;

