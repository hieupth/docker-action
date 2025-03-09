#!/bin/bash

set -e;

exec docker run \
  --entrypoint=$INPUT_SHELL \
  -v "/var/run/docker.sock":"/var/run/docker.sock" \
  -v "/usr/bin/docker":"/usr/bin/docker" \
  -v "/usr/libexec/docker/cli-plugins":"/usr/libexec/docker/cli-plugins" \
  $INPUT_OPTIONS -it $INPUT_IMAGE -c "${INPUT_RUN//$'\n'/;}"