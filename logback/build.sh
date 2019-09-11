#!/bin/bash

#compile, test, package
mvn clean package

# build image
docker build \
    -t eu.gcr.io/fausto-lab/tomcat-simple-site:logback-v1 \
    .

docker push eu.gcr.io/fausto-lab/tomcat-simple-site:logback-v1