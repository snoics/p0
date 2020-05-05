FROM java:p0-1.0

RUN mkdir /home/worksapce

ADD apache-tomcat-8.5.54.tar.gz /home/workspace
COPY ./conf/catalina.sh /home/workspace/apache-tomcat-8.5.54/bin
COPY ./conf/logging.properties /home/workspace/apache-tomcat-8.5.54/conf
COPY ./conf/server.xml /home/workspace/apache-tomcat-8.5.54/conf

RUN mv /home/workspace/apache-tomcat-8.5.54 /opt/tomcat \
  && chmod +x /opt/tomcat/bin/catalina.sh \
  && mkdir -p /opt/config/tomcat \
  && mkdir -p /opt/applications/tomcat \
  && mkdir -p /opt/data/tomcat \
  && mkdir -p /opt/logs/tomcat \
  && rm -rf /home/*

WORKDIR /opt

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh","run"]
