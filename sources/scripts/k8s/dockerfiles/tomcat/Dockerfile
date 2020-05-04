FROM java:p0-1.0

RUN mkdir /home/worksapce

ADD apache-tomcat-8.5.54.tar.gz /home/workspace
COPY catalina.sh /home/workspace/apache-tomcat-8.5.54/bin
COPY logging.properties /home/workspace/apache-tomcat-8.5.54/conf
COPY server.xml /home/workspace/apache-tomcat-8.5.54/conf

RUN mv /home/workspace/apache-tomcat-8.5.54 /opt/tomcat && chmod u+x /opt/tomcat/bin/catalina.sh && mkdir /opt/data && mkdir /opt/logs && mkdir /opt/logs/tomcat && rm -rf /home/*

WORKDIR /opt

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh","run"]
