FROM docker

RUN apk --no-cache add bash

COPY entrypoint.sh /entrypoint.sh

SHELL ["/bin/bash", "-o", "pipefail", "-c"]
ENTRYPOINT ["/entrypoint.sh"]