FROM mysql:5.7.30

RUN mkdir /home/worksapce
COPY mysqld.cnf /home/workspace/

RUN cp -f /home/workspace/mysqld.cnf /etc/mysql/mysql.conf.d \
    && mkdir -p /opt/data/mysql/mysqld \
    && mkdir -p /opt/data/mysql/db \
    && mkdir -p /opt/data/mysql/tmp \
    && mkdir -p /opt/config/mysql \
    && mkdir -p /opt/logs/mysql \
    && chown -R mysql:mysql /opt/config/mysql \
    && chown -R mysql:mysql /opt/data/mysql \
    && chown -R mysql:mysql /opt/logs/mysql \
    && rm -rf /home/*

WORKDIR /opt
