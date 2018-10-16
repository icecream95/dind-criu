FROM icecream95/dind-experimental
MAINTAINER Icecream95

RUN apk add criu --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted

VOLUME /var/lib/docker
EXPOSE 2375

ENTRYPOINT ["dockerd-entrypoint.sh"]
CMD []
