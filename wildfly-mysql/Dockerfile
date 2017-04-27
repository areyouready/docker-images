FROM jboss/wildfly:latest

ENV MYSQL_CONNECTOR_VERSION 5.1.41

ADD customization /opt/jboss/wildfly/customization/

CMD ["/opt/jboss/wildfly/customization/execute.sh"]

