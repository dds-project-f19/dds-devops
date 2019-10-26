#!/bin/bash

docker-compose up -d
docker run -d -p "9000:9000" --network host back:latest
docker run -d -p "80:8080" front:latest
