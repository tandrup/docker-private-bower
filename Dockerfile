FROM node:4.2

MAINTAINER Mads M. Tandrup <mads@maetzke-tandrup.dk>

RUN npm install -g private-bower@1.1.5 && npm cache clear

# Bower registry, git cache and svn cache ports
EXPOSE 5678 6789 7891

VOLUME /data

WORKDIR /home/private-bower

ADD ./bowerConfig.json /home/private-bower/bowerConfig.json
ADD ./launch.sh /home/private-bower/launch.sh
ADD ./ssh/ /root/.ssh


# Work around company firewalls blocking the git protocol
RUN git config --global url."https://github.com/".insteadOf "git://github.com/"

RUN git config --global user.email "private-bower@example.org"
RUN git config --global user.name "Private Bower"

CMD ./launch.sh
