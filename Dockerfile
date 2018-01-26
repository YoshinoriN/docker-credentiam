FROM yoshinorin/docker-sbt:1.1.0

MAINTAINER YoshinoriN

RUN mkdir -p /usr/opt/credentiam

WORKDIR /usr/opt/credentiam

RUN apt-get update \
 && wget https://github.com/YoshinoriN/Credentiam/releases/download/v0.0.1-alpha1/credentiam-0.0.1.zip \
 && unzip credentiam-0.0.1 \
 && mv credentiam-0.0.1/* . \
 && rm -rf credentiam-0.0.1 \
 && ./bin/credentiam -Dconfig.file=./conf/application.conf
