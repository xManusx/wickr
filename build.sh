#!/bin/sh

set -ex
#set username and image name
source ./envs.sh

#the following sometimes seems to be necessary to successfully build:
#echo N | sudo tee /sys/module/overlay/parameters/metacopy

docker build -t $USERNAME/$IMAGE:latest .
