FROM python:3-alpine

RUN set -x \
    && apk add --no-cache \
        groff \
    && pip install --no-cache-dir \
        awscli

ENTRYPOINT ["aws"]
