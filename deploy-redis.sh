export ARGS="redis-server /usr/local/etc/redis/redis.conf"
bash deploy.sh redis:latest redis -v /home/pwestling/redis-conf/redis.conf:/usr/local/etc/redis/redis.conf -v /home/pwestling/redis-data:/data
