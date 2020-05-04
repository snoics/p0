FROM centos:p0

RUN mkdir /home/workspace
RUN mkdir /home/workspace/nginx
RUN mkdir /home/workspace/nginx/conf

ADD nginx-1.17.10.tar.gz /home/workspace/nginx
ADD pcre-8.35.tar.gz /home/workspace/nginx

WORKDIR /home/workspace/nginx/nginx-1.17.10
RUN ./configure --prefix=/opt/nginx --user=root --group=root --with-http_ssl_module --with-http_stub_status_module --with-pcre=/home/workspace/nginx/pcre-8.35 && make && make install && mkdir /opt/data && mkdir /opt/logs && mkdir /opt/logs/nginx

COPY conf /home/workspace/nginx/conf
RUN cp -f /home/workspace/nginx/conf/* /opt/nginx/conf && rm -rf /home/*

ENV PATH /opt/nginx/sbin:$PATH

WORKDIR /opt

EXPOSE 80

CMD ["nginx","-g","daemon off;"]
