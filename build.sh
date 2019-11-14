#!/bin/sh

mvn mvn -f /home/git/festival/pom.xml -Dmaven.test.skip=true -Dspring.profiles.active=prod clean package

rm -rf /opt/tomcat/festival/*

cp -r target/festival-3.0/. /opt/tomcat/webapps/festival/
