FROM jrottenberg/ffmpeg:4-ubuntu
ENV TZ Asia/Shanghai
RUN apk add --no-cache tzdata \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \
    && apk del tzdata
COPY ./go-cqhttp /usr/bin/cqhttp
WORKDIR /data

ENTRYPOINT ["/usr/bin/cqhttp"]

ENTRYPOINT ["/usr/bin/cqhttp"]
