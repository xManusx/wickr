#!/bin/sh
set -e

#set username and image name
source ./envs.sh

#... and start docker and wickr
docker run --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" $USERNAME/$IMAGE:latest
