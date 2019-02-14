#!/usr/bin/env bash

docker build --file 18.09/Dockerfile -t cibuilds/docker:latest -t cibuilds/docker:18.09.2  -t cibuilds/docker:18.09 .
