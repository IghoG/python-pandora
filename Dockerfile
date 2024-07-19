FROM ubuntu:latest

WORKDIR /home/ubuntu
LABEL maintainers=grace@devcorehq.com,david@devcorehq.com
LABEL env=production
LABEL version=v1.0.0

RUN apt update -y && apt install nginx -y && service nginx start

RUN touch team-pandora.txt

EXPOSE 80
ADD ./index.html /var/www/html/

# CMD [ "service", "nginx", "start" ]
# LABEL

# CMD

# ENTRYPOINT 