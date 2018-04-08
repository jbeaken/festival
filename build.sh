export JAVA_HOME=/usr/lib/jvm/java-8-oracle

git pull

mvn -Dmaven.test.skip=true -Dspring.profiles.active=prod clean package

rm -rf /opt/tomcat/marxism/*
cp -r target/marxism-1.1/. /opt/tomcat/marxism/

# systemctl restart tomcat



