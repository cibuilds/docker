#!/usr/bin/env bash

docker build --file 19.03/Dockerfile -t cibuilds/docker:latest -t cibuilds/docker:19.03.5  -t cibuilds/docker:19.03 .
