#!/bin/sh
cd /var/lib/codedeploy/
java -version
javac HelloWorld.java
java HelloWorld
jar cvf HelloWorld.jar HelloWorld.class
mkdir target
mv *.jar target
tar cvfz ${BUILD_NUMBER}-${JOB_NAME}.tar.gz target/*
