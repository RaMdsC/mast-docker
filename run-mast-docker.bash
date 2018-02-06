#!/bin/bash
xhost +local:$USER

docker run \
    --interactive \
    --tty \
    --volume /tmp/.X11-unix:/tmp/.X11-unix:rw \
    --volume /etc/passwd:/etc/passwd:ro \
    --volume /etc/shadow:/etc/shadow:ro \
    --volume $HOME:$HOME:rw \
    --user $(id -u):$(id -g) \
    --workdir $HOME \
    --env DISPLAY=$DISPLAY \
    ramdsc/mast

xhost -local:$USER
