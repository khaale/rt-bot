#!/bin/bash
echo "Restarting NGINX container"

if [[(docker ps -f name=nginx-bot | grep -c nginx-bot) -eq "1"]]; then
    docker restart $NGINX_CONTAINER
fi
