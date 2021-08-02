FROM alpine:latest
ENV TZ Asia/Shanghai
COPY ./go-cqhttp /usr/bin/cqhttp
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
WORKDIR /data

ENTRYPOINT ["/usr/bin/cqhttp"]
