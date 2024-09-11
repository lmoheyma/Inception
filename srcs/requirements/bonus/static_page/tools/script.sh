#!/bin/sh

cd /var/hugo/static/
hugo server --bind=0.0.0.0 --baseURL=https://lmoheyma.42.fr/static -p 1313 --logFile=/dev/stdout --appendPort=false