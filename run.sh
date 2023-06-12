#!/bin/sh

cd /cloud_project && sudo docker-compose up --build -d &&
cd /usr/local &&
git clone https://github.com/searxng/searxng-docker.git &&
cd searxng-docker &&
sed -i 's/127.0.0.1:8080:8080/0.0.0.0:8888:8080/g' docker-compose.yaml &&
sed -i "s|ultrasecretkey|$(openssl rand -hex 32)|g" searxng/settings.yml &&
docker-compose up -d
