#!/bin/bash
docker build -t front:latest front/ --build-arg back_url=ec2-3-86-104-167.compute-1.amazonaws.com --no-cache && \
	docker build -t back:latest back/ --no-cache && \
	docker build -t dds-server:latest . --no-cache && \
	docker-compose up -d
