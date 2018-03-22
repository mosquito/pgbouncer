FROM ubuntu:16.04

RUN apt-get update && apt-get install -y pgbouncer
RUN rm -f /etc/pgbouncer/pgbouncer.ini

WORKDIR /
ADD entrypoint.sh ./
ENTRYPOINT ["./entrypoint.sh"]
