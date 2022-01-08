#!/bin/bash

docker build -t audioserver .
docker run --rm -dp 6600:6600 -t audioserver --name audio .
