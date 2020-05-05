FROM centos:p0-1.0

RUN mkdir /home/worksapce

ADD redis-4.0.14.tar.gz /home/workspace

WORKDIR /home/workspace/redis-4.0.14
RUN make && make install

COPY redis.conf /home/workspace

RUN mv /home/workspace/redis-4.0.14/src /opt/redis \
    cp -f /home/workspace/redis.conf /opt/config/redis \
    && mkdir -p /opt/config/redis \
    && mkdir -p /opt/data/redis \
    && mkdir -p /opt/logs/redis \
    && rm -rf /home/*

WORKDIR /opt

EXPOSE 6379

CMD ["/opt/redis/redis-server", "/opt/config/redis/redis.conf"]

###############################################################
# requirepass #f4^6]e9!go
###############################################################