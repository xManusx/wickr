# xManusx/wickr
 [![Docker Pulls](https://img.shields.io/docker/pulls/xmanusx/wickr.svg)](https://hub.docker.com/r/xmanusx/wickr)


# Wickr in a Docker container

- [Introduction](#introduction)
- [How to build](#howtobuild)
- [Installation](#installation)
- [References](#references)


# Introduction
The purpose of this project is to make Wickr available on a system, through a [Docker](https://www.docker.com/) container, with the fluidity of applications natively installed.

A description of how and why this project came to be can be found at [`j0rg3.com`](http://j0rg3.com/2017/02/18#20170218.making.a.docker.wickr). As the current Wickr package for Arch Linux was broken, I decided I was to lazy to fix the package and instead just build a (working) docker image for Wickr.

# How to build
Just execute the `build.sh` script. It expects to find the Ubuntu installation `.zip` file from the Wickr [Download Page](https://me-download.wickr.com/#/version/me) in the same directory.
Prior to  building, the current version can be set in the `VERSION` file.
Docker username and the image name can be set in `envs.sh`.

# Installation
Instead of building the image yourself it can also be pulled from Docker. `install.sh` pulls the image (according to `envs.sh`) from Docker and creates `/usr/local/bin/wickr`, which can be used to start WickrMe.

# How to launch
Wickr can be launched by either executing the `launch.sh` or by simply executing 

`docker run --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" <IMAGENAME>`


# References
[http://j0rg3.com/2017/02/18#20170218.making.a.docker.bitmessage](http://j0rg3.com/2017/02/18#20170218.making.a.docker.bitmessage)



