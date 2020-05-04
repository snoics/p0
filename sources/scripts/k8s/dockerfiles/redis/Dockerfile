FROM centos:p0

RUN mkdir /home/worksapce

ADD redis-4.0.14.tar.gz /home/workspace

WORKDIR /home/workspace/redis-4.0.14
RUN make && make install && mv /home/workspace/redis-4.0.14/src /opt/redis && mkdir /opt/data && mkdir /opt/data/redis && mkdir /opt/logs && mkdir /opt/logs/redis

COPY redis.conf /home/workspace
RUN cp -f /home/workspace/redis.conf /opt/redis && rm -rf /home/*

WORKDIR /opt

EXPOSE 6379

CMD ["/opt/redis/redis-server", "/opt/redis/redis.conf"]
