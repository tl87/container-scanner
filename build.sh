#!/usr/bin/env bash

image_name="vulnscanner"

if docker image inspect "$image_name" >/dev/null 2>&1; then
    echo "Deleting the existing '$image_name' image..."
    docker image rm "$image_name"
else
    echo "The '$image_name' image does not exist."
fi

docker build -t vulnscanner .
