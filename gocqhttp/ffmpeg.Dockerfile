FROM jrottenberg/ffmpeg:4-ubuntu
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
COPY ./go-cqhttp /usr/bin/cqhttp

WORKDIR /data

ENTRYPOINT ["/usr/bin/cqhttp"]
