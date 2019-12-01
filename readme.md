# Deployment of Gamefication service


### Dependencies
* Docker
* Docker compose

Make sure you [created usergroup](https://docs.docker.com/install/linux/linux-postinstall/#manage-docker-as-a-non-root-user) for docker

### How to run

fast deploy:
```bash

	export TG_KEY=[your api key from @botfather]
	. deploy.sh
```


build step by step:

``` bash
	# Frontend
	docker build -t front:latest front/ --build-arg back_url=[actual server url]

	# Backend
	docker build -t back:latest back/

	# Stack
	docker build -t dds-server:latest . 
```


run:

```bash
# Full stack
export TG_KEY=\'[key]\'

docker-compose up -d
```

Database state will be stored in $ ./data $ folder.

## Used tutorials:

Back (build go):
https://www.callicoder.com/docker-golang-image-container-example/

Front:
https://buddy.works/guides/how-dockerize-node-application

Back (save BD state):
https://hub.docker.com/_/mysql
