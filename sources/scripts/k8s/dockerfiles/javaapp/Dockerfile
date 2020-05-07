FROM java:p0-1.0

RUN mkdir -p /opt/p0/javaapp
COPY entrypoint.sh /opt/p0/javaapp

RUN chmod +x /opt/p0/javaapp/entrypoint.sh

WORKDIR /opt

EXPOSE 9090

ENTRYPOINT ["/opt/p0/javaapp/entrypoint.sh"]
