FROM centos:p0-1.0

RUN mkdir /home/worksapce

ADD redis-4.0.14.tar.gz /home/workspace/

WORKDIR /home/workspace/redis-4.0.14
RUN make && make install

COPY redis.conf /home/workspace/

RUN mv /home/workspace/redis-4.0.14/src /opt/redis \
    && mkdir -p /opt/p0/redis/config \
    && mkdir -p /opt/p0/redis/data \
    && mkdir -p /opt/p0/redis/logs \
    && cp -f /home/workspace/redis.conf /opt/p0/redis/config \
    && rm -rf /home/*

WORKDIR /opt

EXPOSE 6379

CMD ["/opt/redis/redis-server", "/opt/p0/redis/config/redis.conf"]

###############################################################
# requirepass #f4^6]e9!go
###############################################################