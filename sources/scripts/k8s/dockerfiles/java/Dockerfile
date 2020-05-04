FROM centos:p0-1.0

RUN mkdir /home/worksapce

ADD jdk-8u231-linux-x64.tar.gz /home/workspace

RUN mv /home/workspace/jdk1.8.0_231 /opt/java && rm -rf /home/*

ENV JAVA_HOME=/opt/java
ENV PATH=$JAVA_HOME/bin:$PATH

WORKDIR /opt