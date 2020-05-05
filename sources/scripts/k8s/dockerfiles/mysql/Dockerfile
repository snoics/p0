FROM mysql:5.7.30

RUN mkdir /home/worksapce
COPY mysql.cnf /home/workspace

RUN mkdir -p /opt/data \
    && cp -f /home/workspace/mysqld.cnf /etc/mysql/mysql.conf.d \
    && mkdir -p /opt/data/mysql/mysqld \
    && mkdir -p /opt/data/mysql/db \
    && mkdir -p /opt/data/mysql/tmp \
    && mkdir -p /opt/config/mysql \
    && mkdir -p /opt/logs/mysql \
    && chown -R mysql:mysql /opt/config \
    && chown -R mysql:mysql /opt/data \
    && chown -R mysql:mysql /opt/logs \
    && rm -rf /home/*

WORKDIR /opt
