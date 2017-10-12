FROM phusion/passenger-nodejs
MAINTAINER Gary Leong <gwleong@gmail.com>
############################################################

RUN apt-get install curl -y
RUN curl https://install.meteor.com/ | sh

