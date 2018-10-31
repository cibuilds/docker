#!/usr/bin/env bash

versions=( "$@" )

sortedVersions=( $(
	for version in "${versions[@]}"; do
		echo "$version"
	done | sort --reverse) )


for i in "${!sortedVersions[@]}"; do

	version=${sortedVersions[$i]}

	git checkout -b docker-v${version}
	./gen-dockerfiles.sh ${version}
	git add .
	git commit -m "Add Docker v${version}."
	git push -u origin docker-v${version}
done
