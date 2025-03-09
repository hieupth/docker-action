FROM ubuntu:latest

COPY ./setup.sh /setup.sh
RUN /setup.sh

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

COPY ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]