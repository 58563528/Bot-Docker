FROM jrottenberg/ffmpeg:4-ubuntu
ENV TZ Asia/Shanghai
COPY ./go-cqhttp /usr/bin/cqhttp

WORKDIR /data

ENTRYPOINT ["/usr/bin/cqhttp"]
