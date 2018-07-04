#! /usr/bin/env sh

docker run --rm -ti -v $(pwd):$(pwd) -u $(id -u):$(id -g) -w $(pwd) giantswarm/hugo $@
