#!/bin/bash
cd ./bin && \
rm -rf $(ls | grep -v "^domo")
docker kill -- $(docker ps | grep "domo-" | awk '{print $1}') &> /dev/null
docker rm -- $(docker ps -a | grep "domo-" | awk '{print $1}') &> /dev/null
exit 0