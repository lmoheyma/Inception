FROM debian:bullseye

RUN apt update -y && \
    apt install -y gnupg software-properties-common wget curl apt-transport-https lsb-release ca-certificates && \
    curl -sSL https://packages.sury.org/php/README.txt | bash -x && \
    apt update -y && \
    apt install -y php8.1 && \
    apt install -y libapache2-mod-php8.1

RUN apt install php8.1-fpm
COPY ./conf/www.conf /etc/php8.1/php-fpm.d/

RUN mkdir -p /var/www/html/adminer
WORKDIR /var/www/html/adminer

RUN mkdir -p /var/adminer
COPY ./tools/script.sh /var/adminer/

RUN adduser adminer --gecos "adminer adminer,room,phone,phone2" --disabled-password && \
    adduser adminer adminer

ENTRYPOINT ["sh", "/var/adminer/script.sh"]