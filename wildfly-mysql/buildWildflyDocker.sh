#!/bin/bash

MYSQL_CONNECTOR_VERSION="5.1.41"
CONTAINERNAME=
IMAGENAME=
MYSQL_HOST=
MYSQL_PORT=

wget "http://central.maven.org/maven2/mysql/mysql-connector-java/$MYSQL_CONNECTOR_VERSION/mysql-connector-java-$MYSQL_CONNECTOR_VERSION.jar" -O ./customization/mysql-connector-java-$MYSQL_CONNECTOR_VERSION-bin.jar

docker build -t $IMAGENAME .

docker run -d --name $CONTAINERNAME -e MYSQL_HOST=$MYSQL_HOST -e MYSQL_PORT=$MYSQL_PORT -e JAVA_OPTS='-Xmx768m' -p 8080:8080 -d $IMAGENAME