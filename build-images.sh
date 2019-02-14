#!/usr/bin/env bash

docker build --file 18.06/Dockerfile -t cibuilds/docker:latest -t cibuilds/docker:18.06.2-ce  -t cibuilds/docker:18.06 .
