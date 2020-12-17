FROM alpine

WORKDIR /data

RUN apk add --no-cache \
        aws-cli

ENTRYPOINT ["aws"]
