FROM phusion/passenger-nodejs
MAINTAINER Gary Leong <gwleong@gmail.com>
############################################################

RUN apt-get install curl -y
RUN curl https://install.meteor.com/ | sh
RUN useradd -m -G users -s /bin/bash meteor

# We call the "meteor" command for the first time which will install the Meteor binaries in ~/.meteor.
USER meteor
RUN cd /tmp && meteor --version

