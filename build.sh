#!/bin/bash

#compile, test, package
mvn package -f jul/pom.xml

# build image
docker build \
    -t eu.gcr.io/fausto-lab/tomcat-simple-site:v1 \
    -t eu.gcr.io/fausto-lab/tomcat-simple-site:latest \
    .

docker push eu.gcr.io/fausto-lab/tomcat-simple-site:v1