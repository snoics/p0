FROM java:p0-1.0

RUN mkdir -p /opt/p0/javaapp/logs && mkdir mkdir -p /opt/p0/javaapp/bin
COPY entrypoint.sh /opt/p0/javaapp/bin

RUN chmod +x /opt/p0/javaapp/bin/entrypoint.sh && echo 'sleep infinity' >> /opt/p0/javaapp/bin/entrypoint.sh

WORKDIR /opt

EXPOSE 8080
EXPOSE 8081
EXPOSE 8082
EXPOSE 8083
EXPOSE 8084
EXPOSE 8085
EXPOSE 8086
EXPOSE 8087
EXPOSE 8088
EXPOSE 8089

ENTRYPOINT ["/opt/p0/javaapp/bin/entrypoint.sh"]
