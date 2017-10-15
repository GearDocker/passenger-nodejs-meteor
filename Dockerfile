FROM phusion/passenger-nodejs
MAINTAINER Gary Leong <gwleong@gmail.com>
############################################################

RUN apt-get install curl -y
#RUN curl "https://install.meteor.com/?release=1.3.3.1" | sh
RUN curl "https://install.meteor.com/?release=1.4.4.4" | sh
RUN useradd -m -G users -s /bin/bash meteor

# We call the "meteor" command for the first time which will install the Meteor binaries in ~/.meteor.
USER meteor
RUN cd /tmp && meteor --version

USER root
RUN mkdir -p /home/meteor && \
    mkdir -p /usr/src/app && \
    chown -R meteor:meteor /home/meteor && \
    chown -R meteor:meteor /usr/src/app

