#! /usr/bin/bash

# Variables
TOMCATVERSION=9.0.20

wget -P /tmp http://apache.mirror.anlx.net/tomcat/tomcat-9/v$TOMCATVERSION/bin/apache-tomcat-$TOMCATVERSION.tar.gz

# Extract
sudo tar xf /tmp/apache-tomcat-$TOMCATVERSION.tar.gz -C /opt

# Prepare
cp /home/git/marxism/server.xml /opt/apache-tomcat-$TOMCATVERSION/conf/server.xml
cp /home/git/marxism/context.xml /opt/apache-tomcat-$TOMCATVERSION/conf/context.xml
cp /home/git/marxism/setenv.sh /opt/apache-tomcat-$TOMCATVERSION/bin/setenv.sh

# Copy webapps
sudo rm -rf /opt/apache-tomcat-$TOMCATVERSION/webapps
sudo cp -rf /opt/tomcat/webapps /opt/apache-tomcat-$TOMCATVERSION/webapps
sudo cp -rf /opt/tomcat/conf/Catalina /opt/apache-tomcat-$TOMCATVERSION/conf/Catalina

# Tomcat systemd
# sudo cp /home/git/puma/src/main/etc/install/tomcat.service /lib/systemd/system/
# systemctl enable tomcat

# Re-link
sudo rm /opt/tomcat
sudo ln -s /opt/apache-tomcat-$TOMCATVERSION /opt/tomcat

sudo systemctl restart tomcat
