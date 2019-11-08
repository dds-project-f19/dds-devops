Actual [architecture](https://drive.google.com/file/d/15fMMwrnjRqEWKmM2lyuCKiQUysKWQnqe/view?usp=sharing)



# How to run:

```bash
	# Backend
	docker build -t back:2 back/

	docker-compose up
```

``` bash
	# Frontend
	docker build -t front:1 front/

	docker run -p 8080:8080 front:1
```

and sometime:

```bash
docker build --no-cache -t back:latest back/
```

## Used tutorials:

Back (build go):
https://www.callicoder.com/docker-golang-image-container-example/

Front:
https://buddy.works/guides/how-dockerize-node-application

Back (save BD state):
https://hub.docker.com/_/mysql
