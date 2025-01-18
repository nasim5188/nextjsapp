#!/bin/bash
if docker ps | grep -i nodejs-next-app then
    docker stop nodejs-next-app
    docker rm nodejs-next-app:latest
    docker rmi cseahmed01/nodejs-next-app:latest

fi
docker pull cseahmed01/nodejs-next-app:latest
docker run --name nodejs-next-app -d -p 80:3000 cseahmed01/nodejs-next-app