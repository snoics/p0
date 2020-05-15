FROM elasticsearch:7.6.2
RUN mkdir -p /home/workspace
COPY elasticsearch-analysis-ik-7.6.2.zip /home/workspace

RUN echo "vm.max_map_count=262144" >> /etc/sysctl.conf \
  && mkdir -p /opt/p0/elasticsearch/data \
  && mkdir -p /opt/p0/elasticsearch/logs

WORKDIR /home/workspace
RUN sh -c '/bin/echo -e "y" | elasticsearch-plugin install file:///home/workspace/elasticsearch-analysis-ik-7.6.2.zip'

RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone

WORKDIR /opt

EXPOSE 9200
EXPOSE 9300
