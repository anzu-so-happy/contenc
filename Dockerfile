FROM ubuntu:16.04
RUN apt-get update && apt-get install letsencrypt
CMD sleep 3600