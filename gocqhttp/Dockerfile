FROM alpine:latest

RUN apk update \
    && apk add tzdata \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone
COPY ./go-cqhttp /usr/bin/cqhttp
WORKDIR /data

ENTRYPOINT ["/usr/bin/cqhttp"]
