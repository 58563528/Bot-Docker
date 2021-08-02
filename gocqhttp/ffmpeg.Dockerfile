FROM jrottenberg/ffmpeg:4-ubuntu
ENV TZ Asia/Shanghai
COPY ./go-cqhttp /usr/bin/cqhttp
RUN apk add --no-cache tzdata
WORKDIR /data

ENTRYPOINT ["/usr/bin/cqhttp"]
