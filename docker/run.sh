#!/bin/bash

docker rm -f $(docker ps -aqf "name=bravidb")
docker network rm migration 

docker network create bravi

( cd database ; ./run.sh )
