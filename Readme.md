Actual [architecture](https://drive.google.com/file/d/15fMMwrnjRqEWKmM2lyuCKiQUysKWQnqe/view?usp=sharing)



# How to run:

build:

``` bash
	# Frontend
	docker build -t front:latest front/ --build-arg back_url=back
```


```bash
	# Backend
	docker build -t back:latest back/
```

``` bash
	# Full stack
	docker build -t dds-server:latest . 
```


run:

```bash
# Database
docker-compose -d up

# Back + front
docker run -p "9000:9000" -p "80:8080" -it -d -e DDS_TELEGRAM_BOT_APIKEY='[actual key]' --network host dds-server:latest

```

## Used tutorials:

Back (build go):
https://www.callicoder.com/docker-golang-image-container-example/

Front:
https://buddy.works/guides/how-dockerize-node-application

Back (save BD state):
https://hub.docker.com/_/mysql
