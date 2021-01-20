FROM docker:latest

RUN set -x \
   && apk add --no-cache \
   python3 \
   py3-pip \
   bash \
   curl \
   git \
   && apk add --no-cache --virtual build-deps \
   python3-dev \
   libffi-dev \
   openssl-dev \
   gcc \
   libc-dev \
   make \
   && pip3 install --trusted-host pypi.python.org \
   docker-compose \
   && rm -r ~/.cache/pip \
   && apk del build-deps
