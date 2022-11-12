#!/bin/sh

user_id=$(id -u)        # User id number
group_id=$(id -g)       # User group id number

docker build \
  --build-arg USER_ID=$user_id \
  --build-arg GROUP_ID=$group_id \
  --file Dockerfile \
  -t mortiz/pytorch_image:0.1 .
