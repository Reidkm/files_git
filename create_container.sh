#!/bin/bash
# e.g.    sudo ./create_container.sh kiktech/ros:kalibr ~/public kalibr
# e.g.    sudo ./create_container.sh kiktech/ros:tagslam ~/public tagslam

#image     project_dir     name

IMAGE=$1
PROJECT_DIR=$2
NAME=$3

docker run -itd --runtime=nvidia \
--name=$NAME \
--privileged \
-e NVIDIA_VISIBLE_DEVICES=all \
-e DISPLAY=$DISPLAY \
--device /dev/snd \
-v $PROJECT_DIR:/public \
-v /dev:/dev \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v /etc/localtime:/etc/localtime \
--ipc=host \
--net=host \
$IMAGE


docker run -itd --runtime=nvidia \
--privileged \
-e NVIDIA_VISIBLE_DEVICES=all \
-e DISPLAY=$DISPLAY \
--device /dev/snd \
-v /dev:/dev \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v /etc/localtime:/etc/localtime \
--ipc=host \
--net=host \
c9119


docker run -it --privileged \
-e DISPLAY=$DISPLAY \
--device /dev/snd \
-v /dev:/dev \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v ~/public:/public  \
-v /etc/localtime:/etc/localtime \
--name=mynteye \
mynteye-sd:v1



docker run -it --privileged \
-e DISPLAY=$DISPLAY \
--device /dev/snd \
-v /dev:/dev \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v ~/public:/public  \
-v /etc/localtime:/etc/localtime \
--name=kalibr \
8aba106f949e
