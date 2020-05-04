FROM centos:7

RUN yum -y update && yum -y upgrade && yum -y install vim wget curl gcc gcc-c++ make openssl-devel telnet glibc-devel autoconf ncurses-devel

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN echo "*   soft noproc   65535" >> /etc/security/limits.conf \
    && echo "*   hard noproc   65535" >> /etc/security/limits.conf \
    && echo "*   soft nofile   65535" >> /etc/security/limits.conf \
    && echo "*   hard nofile   65535" >> /etc/security/limits.conf \
    && echo "ulimit -u 65535" >> /etc/profile