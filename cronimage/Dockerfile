FROM ubuntu:latest
RUN apt-get update && apt-get -y install cron docker.io
COPY ./bin /usr/bin/cron/
CMD ["cron", "-f"]
