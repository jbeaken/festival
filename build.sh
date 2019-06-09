export JAVA_HOME=/usr/lib/jvm/java-8-oracle

git pull

mvn -Dmaven.test.skip=true -Dspring.profiles.active=prod clean package

<<<<<<< HEAD
rm -rf /opt/tomcat/marxism/*
<<<<<<< HEAD
cp -r target/marxism-1.1/. /opt/tomcat/marxism/
=======
cp -r target/marxism-2.0/. /opt/tomcat/marxism/
>>>>>>> 8f6e772... Removing sts4-cache
=======
rm -rf /opt/tomcat/festival/*
cp -r target/festival-3.0/. /opt/tomcat/festival/
>>>>>>> bdd0bbb... Moving files to party festival package

# systemctl restart tomcat



