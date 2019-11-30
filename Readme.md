Actual [architecture](https://drive.google.com/file/d/15fMMwrnjRqEWKmM2lyuCKiQUysKWQnqe/view?usp=sharing)



# How to run:

build:

``` bash
	# Frontend
	docker build -t front:latest front/
```


```bash
	# Backend
	docker build -t back:latest back/
```



run:

```bash
# Database
docker-compose -d up

# Back + front
docker run -p "9000:9000" -p "80:8080" -it -d -e DDS_TELEGRAM_BOT_APIKEY='[actual key]' --network host bk:latest

```

## Used tutorials:

Back (build go):
https://www.callicoder.com/docker-golang-image-container-example/

Front:
https://buddy.works/guides/how-dockerize-node-application

Back (save BD state):
https://hub.docker.com/_/mysql
