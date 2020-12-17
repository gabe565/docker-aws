FROM alpine

WORKDIR /data

RUN apk add --no-cache \
        aws-cli \
    && ln -s /root/.aws /.aws

ENTRYPOINT ["aws"]
