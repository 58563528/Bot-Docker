FROM alpine:latest
ENV TZ Asia/Shanghai
COPY ./go-cqhttp /usr/bin/cqhttp
RUN apk --no-cache add tzdata
WORKDIR /data

ENTRYPOINT ["/usr/bin/cqhttp"]
