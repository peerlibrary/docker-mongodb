#!/bin/bash -e

if [[ -n "$PREFIX" ]]; then
	PREFIX="${PREFIX}_"
fi

mkdir -p "/srv/${PREFIX}mongodb"
mkdir -p "/srv/log/${PREFIX}mongodb"

docker run -d --name "${PREFIX}mongodb" -h "${PREFIX}mongodb.mongodb.server1.docker" -e MONGOD_ARGS='--replSet meteor' -v "/srv/log/${PREFIX}mongodb:/var/log/mongod" -v "/srv/${PREFIX}mongodb:/var/lib/mongodb" peerlibrary/mongodb
