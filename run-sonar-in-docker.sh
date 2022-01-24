#!/usr/bin/env bash

script_dir=$(realpath $(dirname $0))
echo $script_dir
docker run --name sonar --stop-timeout 3600 -v $script_dir/sonar-data:/opt/sonarqube/data \
-v $script_dir/sonar-logs:/opt/sonarqube/logs \
-v $script_dir/sonar-extensions:/opt/sonarqube/extensions \
-p 8080:9000 \
sonarqube:8.9.6-community