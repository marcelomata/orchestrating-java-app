#!/bin/bash

docker build -t "bravidb:0.0.1" .
docker tag bravidb:0.0.1 marcelomata/bravidb:0.0.1
docker push marcelomata/bravidb:0.0.1

# fazer o deploy no kubernetes
kubectl create -f deployment.yaml
kubectl rollout status deployment bravidb-deployment
kubectl expose deployment bravidb-deployment --type=NodePort


