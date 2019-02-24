#!/bin/sh -
#
# Build Docker image
#

echo "@@ Build Docker image ..."

target=local/centos7:sdk

id=`docker image ls -q $target`

if [ -n "$id" ]; then
  echo "@@ remove target image: $target ..."
  docker image rm $target
else
  echo "@@ $target does not exist."
fi

echo "@@ build target image ..."
docker build -f Dockerfile -t $target .

