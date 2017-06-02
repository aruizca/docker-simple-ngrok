#!/usr/bin/env bash

docker run -d \
    -p 4040:4040 \
    -p 80:80 \
    -v $HOME/.ngrok2/ngrok.yml:/home/ngrok/.ngrok2/ngrok.yml \
    --name docker-simple-ngrok-container \
    docker-simple-ngrok \
    ./ngrok start ac