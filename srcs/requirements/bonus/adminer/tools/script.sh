#!/bin/sh

wget "https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php"
mv adminer-4.8.1.php index.php
mkdir -p /run/php

exec php-fpm8.1 --nodaemonize