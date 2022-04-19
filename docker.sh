#!/bin/bash

ran=$RANDOM

ran2=$((1025+$RANDOM%65535))

name="FireFox-$ran"
echo $ran2

sudo docker run -d \
    --name=$name \
    -p $ran2:5800 \
    -e "SECURE_CONNECTION=1" \
    --shm-size 2g \
    --device /dev/snd \
    joyskmathew/digifenz

con=$(sudo docker ps -aqf "name=$name")

{
    sleep 10m
    sudo docker rm -f $con
    kill $$
}


