
FROM alpine:3.5

RUN set -x \
 && apk add --no-cache \
    docker \
 && apk add --no-cache --virtual build-deps \
    make \
    py-pip \
 && pip install --trusted-host pypi.python.org \
    docker-compose \
 && rm -r ~/.cache/pip \
 && apk del build-deps
