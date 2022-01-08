#!/bin/bash

docker build -t audioserver .
docker run -dp 6600:6600 -it -t audioserver --name audio ./command
