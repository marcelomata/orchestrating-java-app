#!/bin/bash

node_port=$(kubectl get service bravidb-deployment --output jsonpath='{.spec.ports[*].nodePort}')
sed -i -e "s/[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}:[0-9]\{1,5\}/192.168.99.100:$node_port/g" ../../src/main/resources/application.properties

cd ../.. && mvn clean package -DskipTests && cd kubernetes/app

cp ../../target/spring-boot-sample-hateoas-*.jar ./
docker build -t "braviapp:0.0.1" .
docker tag braviapp:0.0.1 marcelomata/braviapp:0.0.1
docker push marcelomata/braviapp:0.0.1
rm spring-boot-sample-hateoas-*.jar

# fazer o deploy no kubernetes
kubectl create -f deployment.yaml
kubectl rollout status deployment braviapp-deployment
kubectl expose deployment braviapp-deployment --type=NodePort
