FROM node:0.10

MAINTAINER Mads M. Tandrup <mads@maetzke-tandrup.dk>

RUN npm install -g private-bower

# Bower registry port
EXPOSE 5678

# Git cache port
EXPOSE 6789

# SVN cache port
EXPOSE 7891

WORKDIR /home/private-bower

ADD ./bowerConfig.json /home/private-bower/bowerConfig.json

ENTRYPOINT private-bower --config /home/private-bower/bowerConfig.json