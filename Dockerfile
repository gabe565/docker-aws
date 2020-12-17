FROM alpine

WORKDIR /data

RUN set -x \
    && apk add --no-cache \
        aws-cli \
    && ln -s /root/.aws /.aws

ENTRYPOINT ["aws"]
