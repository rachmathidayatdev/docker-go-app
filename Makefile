docker-build:
	@docker build --tag rachmathidayatdev/docker-go-app:1.0 .

docker-pull:
	@docker pull rachmathidayatdev/docker-go-app:1.0

docker-push:
	@docker push rachmathidayatdev/docker-go-app:1.0

docker-create:
	@docker container create --name go-app -p 8082:8082 \
		-e NAME="Rachmat Hidayat" \
		-e DB_NAME=testing \
		rachmathidayatdev/docker-go-app:1.0

docker-start:
	@docker container start go-app

docker-stop:
	@docker container stop go-app

docker-remove:
	@docker container rm go-app

docker-container-ls:
	@docker container ls --all

docker-logs:
	@docker container logs go-app