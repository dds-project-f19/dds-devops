#!/bin/bash

docker build -t front:latest front/ --no-cache && \
	docker build -t back:latest back/ --no-cache && \
	docker build -t dds-server:latest . --no-cache && \
	docker-compose up -d
