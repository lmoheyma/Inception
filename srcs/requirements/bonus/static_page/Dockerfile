FROM debian:bullseye

RUN apt update -y && \
    apt install hugo git -y && \
    apt update -y

RUN hugo new site /var/hugo/static && \
    cd /var/hugo/static && \
    git clone https://github.com/vaga/hugo-theme-m10c.git themes/m10c && \
    hugo -b https://lmoheyma.42.fr/static && \
    mkdir -p /var/hugo/static/content/about/

COPY ./conf/config.toml /var/hugo/static/config.toml
COPY ./conf/about.md /var/hugo/static/content/about/about.md
COPY ./conf/avatar.jpg /var/hugo/static/themes/m10c/static/avatar.jpg
COPY ./tools/script.sh /
RUN chmod +x /script.sh

EXPOSE 1313

ENTRYPOINT [ "sh", "./script.sh" ]