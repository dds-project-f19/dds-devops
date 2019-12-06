# Deployment of Gamefication service

[Frontend](https://github.com/dds-project-f19/dds-frontend)

[Backend](https://github.com/dds-project-f19/dds-backend)

### Dependencies
* Docker
* Docker compose

Make sure you [created usergroup](https://docs.docker.com/install/linux/linux-postinstall/#manage-docker-as-a-non-root-user) for docker.

Example of environment setting described in ```env.sh``` file.

*Telegram bot:* ask @BotFather to create new bot and use provided token in guide next!

**Note:** in case you have troubles with *TG_KEY* forwarding, you can explicitly put it in *docker-compose.yaml* in *DDS_TELEGRAM_BOT_APIKEY* variable of *stack* service.

If you run it on **windows**, make sure your drive configurated to be mounted as [here](https://github.com/Cyb3rWard0g/HELK/issues/79).

```
	# Key env variable on windows
	set TG_KEY=[your api key from @botfather]
```
Then repeating of commands from *deploy.sh* will lead you to correct deploy even on windows.

If you run server in **Russia**, telegram connection can be rejected each 30 seconds and back will restart. 

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

Database state will be stored in *./data* folder.

## Used tutorials:

Back (build go):
https://www.callicoder.com/docker-golang-image-container-example/

Front:
https://buddy.works/guides/how-dockerize-node-application

Back (save BD state):
https://hub.docker.com/_/mysql
