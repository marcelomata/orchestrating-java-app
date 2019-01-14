#!/bin/bash

docker build -t "bravidb" .
docker run --rm --network=bravi -d -p 3306:3306 --name "bravidb" "bravidb"
