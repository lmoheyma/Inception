FROM debian:bullseye

RUN apt update -y && \
    apt install hugo git -y && \
    apt update -y

RUN hugo new site /var/hugo/masterclass && \
    cd /var/hugo/masterclass && \
    git clone https://github.com/vaga/hugo-theme-m10c.git themes/m10c && \
    hugo -b https://lmoheyma.42.fr/masterclass

COPY ./conf/config.toml /var/hugo/masterclass/config.toml
COPY ./tools/script.sh /
RUN chmod +x /script.sh

EXPOSE 1313

ENTRYPOINT [ "sh", "./script.sh" ]