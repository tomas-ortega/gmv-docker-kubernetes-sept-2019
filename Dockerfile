FROM ubuntu:18.10

RUN apt-get update
RUN apt-get install nginx -y
RUN echo '<marquee>Hello GMV</marquee>' \
    > /var/www/html/index.html

COPY index.html /var/www/html/index.html

RUN useradd pakito

#USER pakito

RUN echo 'Hello From Build...'

EXPOSE 80

LABEL MAINTAINER Tomy
LABEL CLIENT "3564245"

ENV DATABASE_IP 80.54.56.23
ENV DATABASE_USER pakito

WORKDIR /etc

ENTRYPOINT [ "nginx","-g","daemon off;" ]