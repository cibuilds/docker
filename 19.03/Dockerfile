# vim:set ft=dockerfile:

FROM cibuilds/base:2019.04

LABEL maintainer="Ricardo N Feliciano (FelicianoTech) <Ricardo@Feliciano.Tech>"

ENV DOCKER_VERSION=19.03.0
ENV DOCKER_URL=https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKER_VERSION}.tgz
ENV COMPOSE_VERSION=1.24.1


# The Docker Library version of the images does this so we do too.
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf

# Install the Docker binaries.
RUN curl -sSL "$DOCKER_URL" | tar -xz --strip-components=1 -C /usr/local/bin

# Install Docker Compose from pip. There's an apk package coming in the future.
RUN apk --no-cache add \
		gcc \
		libc-dev \
		libffi-dev \
		make \
		openssl-dev \
		py-pip \
		python-dev \
	&& \
	pip install --upgrade pip && \
	pip install docker-compose==${COMPOSE_VERSION}


WORKDIR /root/project
