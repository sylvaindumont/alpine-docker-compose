FROM alpine:edge

RUN set -x \
 && apk add --no-cache \
    docker \
    python2 \
 && apk add --no-cache --virtual build-deps \
    make \
    py-pip \
 && pip install --trusted-host pypi.python.org \
    docker-compose \
 && rm -r ~/.cache/pip \
 && apk del build-deps
