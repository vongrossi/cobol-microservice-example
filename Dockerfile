FROM gregcoleman/docker-cobol
MAINTAINER Greg Coleman <gregory.m.coleman@gmail.com>

EXPOSE 7707

RUN apt-get update && \
    apt-get install -y php-cli make

COPY  src/* /service/
COPY ./docker-entrypoint.sh /service/

WORKDIR  /service

RUN ["chmod", "+x", "/service/docker-entrypoint.sh"]

ENTRYPOINT ["docker-entrypoint.sh"]
