#!/bin/bash

docker-compose up -d
docker run -p "80:9000" --network host back:latest 
