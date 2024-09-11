#!/bin/sh

sed -i "s|# maxmemory <bytes>|maxmemory 2mb|g" /etc/redis/redis.conf
sed -i "s|# maxmemory-policy noeviction|maxmemory-policy allkeys-1ru|g" /etc/redis/redis.conf

redis-server --protected-mode no