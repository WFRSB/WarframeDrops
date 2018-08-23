FROM alpine:3.8

RUN apk add --no-cache \
  tidyhtml \
  bash \
  wget && \
  rm -rf \
    /tmp/*

VOLUME [ "/data" ]

WORKDIR /data

COPY run.sh .


ENTRYPOINT ["bash", "run.sh"]
