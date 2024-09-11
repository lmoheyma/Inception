FROM debian:bullseye

RUN apt update -y && apt upgrade -y
RUN apt install redis -y

COPY ./tools/script.sh /var/redis_init.sh

ENTRYPOINT [ "sh", "/var/redis_init.sh" ]