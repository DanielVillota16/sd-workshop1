FROM debian:latest
MAINTAINER danielvillota1016@gmail.com

ENV DEBIAN_FRONTEND=nointeractive
RUN apt-get update
RUN apt install nginx -y
RUN service nginx start

RUN apt install -y wget
RUN wget www.reddit.com
RUN mv index.html /var/www/html

RUN service nginx restart

CMD ["nginx","-g","daemon off;"]
