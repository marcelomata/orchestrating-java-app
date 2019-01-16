#!/bin/bash

docker build -t "bravidb:0.0.1" .
docker run --rm --network=bravi -d -p 3306:3306 --name "bravidb" "bravidb:0.0.1"
