#!/bin/sh

export JAVA_HOME=/usr/lib/jvm/java-8-oracle

git pull

mvn -Dmaven.test.skip=true -Dspring.profiles.active=prod clean package

rm -rf /opt/tomcat/festival/*

cp -r target/festival-3.0/. /opt/tomcat/festival/

# systemctl restart tomcat
