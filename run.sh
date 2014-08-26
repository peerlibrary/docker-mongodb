#!/bin/bash -e

mkdir -p /srv/mongodb
mkdir -p /srv/log/mongodb

docker run -d --name mongodb -h mongodb.mongodb.server1.docker -e MONGOD_ARGS='--replSet meteor' -v /srv/log/mongodb:/var/log/mongod -v /srv/mongodb:/var/lib/mongodb peerlibrary/mongodb
