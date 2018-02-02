#!/bin/sh
docker build ./ -t lenc
docker run -d -p 80:80 lenc bash
docker exec -it lenc letsencrypt certonly --standalone -d your.domain.here
docker exec -it lenc tar cfz le.tar.z /etc/letsencrypt/
docker cp lenc:/le.tar.z .