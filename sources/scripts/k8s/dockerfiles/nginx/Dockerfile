FROM centos:p0-1.0

RUN mkdir /home/workspace
RUN mkdir /home/workspace/nginx
RUN mkdir /home/workspace/nginx/conf

ADD nginx-1.17.10.tar.gz /home/workspace/nginx/
ADD pcre-8.35.tar.gz /home/workspace/nginx/

WORKDIR /home/workspace/nginx/nginx-1.17.10
RUN ./configure --prefix=/opt/nginx --user=root --group=root --with-http_ssl_module --with-http_stub_status_module --with-pcre=/home/workspace/nginx/pcre-8.35 \
    && make && make install

COPY conf /home/workspace/nginx
RUN mkdir -p /opt/p0/nginx/data \
    && mkdir -p /opt/p0/nginx/applications \
    && mkdir -p /opt/p0/nginx/logs \
    && mkdir -p /opt/p0/nginx/config \
    && mv /home/workspace/nginx/conf /opt/p0/nginx/config \
    && rm -rf /home/*

ENV PATH /opt/nginx/sbin:$PATH

WORKDIR /opt

EXPOSE 80

CMD ["nginx","-c","/opt/p0/nginx/config/conf/nginx.conf"]
