FROM debian:bullseye

RUN apt update -y && apt upgrade -y
RUN apt install vsftpd -y

RUN mkdir -p /etc/vsftpd
COPY ./conf/vsftpd.conf /etc/vsftpd/vsftpd.conf
COPY ./tools/script.sh /etc/vsftpd/script.sh

RUN mkdir -p /var/run/vsftpd/empty

ENTRYPOINT [ "sh", "/etc/vsftpd/script.sh" ]