FROM java:p0-1.0

RUN mkdir -p /opt/p0/javaapp/logs
COPY entrypoint.sh /opt/p0/javaapp

RUN chmod +x /opt/p0/javaapp/entrypoint.sh && echo 'sleep infinity' >> /opt/p0/javaapp/entrypoint.sh

WORKDIR /opt

EXPOSE 19090
EXPOSE 19091
EXPOSE 19092
EXPOSE 19093
EXPOSE 19094
EXPOSE 19095
EXPOSE 19096
EXPOSE 19097
EXPOSE 19098
EXPOSE 19099

ENTRYPOINT ["/opt/p0/javaapp/entrypoint.sh"]
