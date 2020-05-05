FROM mysql:5.7.30

RUN apt install tzdata && rm /etc/localtime && ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN mkdir /home/worksapce
COPY mysqld.cnf /home/workspace/

RUN cp -f /home/workspace/mysqld.cnf /etc/mysql/mysql.conf.d \
    && mkdir -p /opt/p0/mysql/data/db \
    && mkdir -p /opt/p0/mysql/data/tmp \
    && mkdir -p /opt/p0/mysql/logs \
    && chown -R mysql:mysql /opt/p0/mysql \
    && rm -rf /home/*

WORKDIR /opt
