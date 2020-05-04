FROM centos:sample

RUN yum install -y libaio numactl

RUN mkdir /home/worksapce

ADD mysql-5.7.29-linux-glibc2.12-x86_64.tar.gz /home/workspace

RUN mv /home/workspace/mysql-5.7.29-linux-glibc2.12-x86_64 /opt/mysql

COPY my.cnf /home/workspace

RUN cp -f /home/workspace/my.cnf /etc \
    && cp -f /opt/mysql/bin/my_print_defaults /usr/bin/ \
    && mkdir /opt/data \
    && mkdir /opt/data/mysql \
    && mkdir /opt/data/mysql/db \
    && mkdir /opt/data/mysql/tmp \
    && mkdir /opt/data/mysql/redolog \
    && mkdir /opt/data/mysql/undolog \
    && mkdir /opt/logs \
    && mkdir /opt/logs/mysql \
    && rm -rf /home/* \
    && groupadd mysql \
    && useradd -r -g mysql mysql \
    && chown -R mysql:mysql /opt/mysql \
    && chown -R mysql:mysql /opt/data \
    && chown -R mysql:mysql /opt/logs

ENV PATH=/opt/mysql/bin:/opt/mysql/support-files:$PATH

RUN mysqld --defaults-file=/etc/my.cnf --user=mysql --basedir=/opt/mysql --datadir=/opt/data/mysql/db --initialize

WORKDIR /opt

EXPOSE 3306

CMD ["mysql.server", "start"]
