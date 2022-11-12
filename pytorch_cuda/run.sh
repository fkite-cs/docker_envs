#!/bin/sh
#sudo docker run --rm -it --userns="host" /
#xhost +
#docker run -it --gpus all --shm-size 8G \

user_id=$(id -u)        # User id number
group_id=$(id -g)       # User group id number

docker run --rm --privileged -it -u $user_id:$group_id \
--gpus all \
-e DISPLAY=$DISPLAY --name="pytorch_container" --net="host" \
-v /tmp/.X11-unix/:/tmp/.X11-unix --volume="$HOME/.Xauthority:/root/.Xauthority:rw" \
-v "/home/jairo/miguel/":"/usr/src/app" \
mortiz/pytorch_container:0.1 bash
