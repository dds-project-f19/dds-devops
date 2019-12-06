# Deployment of Gamefication service

[Frontend](https://github.com/dds-project-f19/dds-frontend/blob/03ec001585d47d93844c787a8f505b8d0551023e/src/serviceWorker.ts)
[Backend](https://github.com/dds-project-f19/dds-frontend/blob/03ec001585d47d93844c787a8f505b8d0551023e/src/serviceWorker.ts)

### Dependencies
* Docker
* Docker compose

Make sure you [created usergroup](https://docs.docker.com/install/linux/linux-postinstall/#manage-docker-as-a-non-root-user) for docker.

Example of environment setting described in ```env.sh``` file.

*Telegram bot: * ask @BotFather to create new bot and use provided token in guide next!

**Note:** in case you have troubles with *TG_KEY* forwarding, you can explicitly put it in *docker-compose.yaml* in *DDS_TELEGRAM_BOT_APIKEY* variable of *stack* service.

### How to run

fast deploy:
```bash

	export TG_KEY=[your api key from @botfather]
	. deploy.sh
```


build step by step:

``` bash
	# Frontend
	docker build -t front:latest front/

	# Backend
	docker build -t back:latest back/

	# Stack
	docker build -t dds-server:latest . 
```


run:

```bash
# Full stack 

# raw token expected. No brackets or quotes.
export TG_KEY=[your api key from @botfather]

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
