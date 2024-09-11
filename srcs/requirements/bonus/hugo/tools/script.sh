#!/bin/sh

cd /var/hugo/masterclass/
hugo server --bind=0.0.0.0 --baseURL=https://lmoheyma.42.fr/masterclass -p 1313 --logFile=/dev/stdout --appendPort=false