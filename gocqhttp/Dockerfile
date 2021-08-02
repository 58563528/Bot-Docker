FROM alpine:latest
ENV TZ Asia/Shanghai
COPY ./go-cqhttp /usr/bin/cqhttp

WORKDIR /data

ENTRYPOINT ["/usr/bin/cqhttp"]
