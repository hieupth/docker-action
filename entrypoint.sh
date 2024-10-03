#!/bin/bash

set -e;

if [ ! -z $INPUT_USERNAME ];
then echo $INPUT_PASSWORD | docker login $INPUT_REGISTRY -u $INPUT_USERNAME --password-stdin
fi

if [ ! -z $INPUT_DOCKER_NETWORK ];
then INPUT_OPTIONS="$INPUT_OPTIONS --network $INPUT_DOCKER_NETWORK"
fi

exec docker run \
  --entrypoint=$INPUT_SHELL \
  -v "/var/run/docker.sock":"/var/run/docker.sock" \
  -v "/usr/bin/docker":"/usr/bin/docker" $INPUT_OPTIONS \
  -it $INPUT_IMAGE -c "${INPUT_RUN//$'\n'/;}"