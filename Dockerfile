FROM ubuntu:18.10

RUN apt-get update
RUN apt-get install nginx -y
RUN echo '<marquee>Hello GMV</marquee>' \
    > /var/www/html/index.html

RUN echo 'Hello From Build...'

EXPOSE 80

WORKDIR /etc

ENTRYPOINT [ "nginx","-g","daemon off;" ]