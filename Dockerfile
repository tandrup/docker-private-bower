FROM node:0.10

MAINTAINER Mads M. Tandrup <mads@maetzke-tandrup.dk>

RUN npm install -g private-bower

# Bower registry, git cache and svn cache ports
EXPOSE 5678 6789 7891

VOLUME /data

WORKDIR /home/private-bower

ADD ./bowerConfig.json /home/private-bower/bowerConfig.json

ENTRYPOINT private-bower --config /home/private-bower/bowerConfig.json
