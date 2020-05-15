FROM mongo:3.6.18-xenial

RUN mkdir -p /opt/p0/mongodb/data \
  && mkdir -p /opt/p0/mongodb/config \
  && mkdir -p /opt/p0/mongodb/logs

RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone

EXPOSE 27017
