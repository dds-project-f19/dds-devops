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
