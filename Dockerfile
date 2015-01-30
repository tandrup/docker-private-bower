FROM node:0.10

MAINTAINER Mads M. Tandrup <mads@maetzke-tandrup.dk>

RUN npm install -g private-bower

EXPOSE 5678

#WORKDIR /home/private-bower

#ADD ./bowerConfig.json /home/private-bower/bowerConfig.json

ENTRYPOINT private-bower --config /home/private-bower/bowerConfig.json