FROM java:p0-1.0

RUN mkdir /home/worksapce

ADD otp_src_22.3.tar.gz /home/workspace/
ADD rabbitmq-server-generic-unix-3.8.3.tar /home/workspace/

WORKDIR /home/workspace/otp_src_22.3
RUN mkdir /etc/erlang && ./configure --prefix=/opt/erlang && make && make install

ENV ERLANG_HOME=/opt/erlang
ENV PATH=$PATH:$ERLANG_HOME/bin

WORKDIR /home/workspace/rabbitmq_server-3.8.3
RUN mv /home/workspace/rabbitmq_server-3.8.3 /opt/rabbitmq_server \
    && mkdir -p /opt/p0/rabbitmq/config \
    && mkdir -p /opt/p0/rabbitmq/data \
    && mkdir -p /opt/p0/rabbitmq/logs

COPY conf /home/workspace

RUN ls /home/workspace && mkdir /etc/rabbitmq \
    && mv /home/workspace/rabbitmq.conf /etc/rabbitmq \
    && mv /home/workspace/rabbitmq-env.conf /etc/rabbitmq \
    && rm -rf /home/*

ENV RABBITMQ_HOME=/opt/rabbitmq_server
ENV PATH=$PATH:$RABBITMQ_HOME/sbin

RUN rabbitmq-plugins enable rabbitmq_management

RUN mkdir -p /opt/rabbitmq_server/var/lib/rabbitmq/mnesia && mkdir -p /opt/rabbitmq_server/var/log

WORKDIR /opt

EXPOSE 4369
EXPOSE 5672
EXPOSE 15672
EXPOSE 25672

CMD ["/opt/rabbitmq_server/sbin/rabbitmq-server", "start"]
