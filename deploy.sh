#!/bin/bash
docker build -t front:latest front/ --build-arg back_url=http://ec2-3-84-42-225.compute-1.amazonaws.com:9000 --no-cache && \
	docker build -t back:latest back/ --no-cache && \
	docker build -t dds-server:latest . --no-cache && \
	docker-compose up -d
