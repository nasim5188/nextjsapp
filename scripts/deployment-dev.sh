#!/bin/bash
if docker ps | grep -i nodejs-next-app then
    docker stop nodejs-next-app
    docker rm nodejs-next-app
    docker rmi cseahmed01/nodejs-next-app:

fi
docker pull cseahmed01/nodejs-next-app
docker run --name nodejs-next-app -d -p 80:3000 cseahmed01/nodejs-next-app