# CI Builds: Docker Image [![CircleCI Build Status](https://circleci.com/gh/cibuilds/docker.svg?style=shield)](https://circleci.com/gh/cibuilds/docker) [![GitHub License](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/cibuilds/docker/master/LICENSE)

Docker image containing the Docker CLI and Docker Compose, designed to run well in Continuous Integration environments such as CircleCI.

Based on [CI Builds Base Image](https://github.com/cibuilds/base) which is based on Alpine.


## Tags

After the 18.06 release, Docker Community Edition releases every 6 months starting with 18.09.
We'll have a tag (e.g. `cibuilds/docker:18.09`) for that release as well as a patch tag for patch releases (e.g. `cibuilds/docker:18.09.1`).

`:latest` will point to the latest, stable release.

The version of Docker Compose installed will be the current, stable release of Docker Compose available when that version of Docker comes out.
Only patch updates will be updated.

On CircleCI, make sure to use the `setup_remote_docker` step before using the Docker command.
