.PHONY: up down build push deploy

up:
docker-compose up -d

down:
docker-compose down

build:
docker build -t ghcr.io/santhoshkumarvs/neuralcura-api:latest .

push:
docker push ghcr.io/santhoshkumarvs/neuralcura-api:latest

deploy:
kubectl apply -f k8s/
