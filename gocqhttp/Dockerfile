FROM alpine:latest
ENV TIME_ZONE Asiz/Shanghai
RUN apk add --no-cache tzdata \
#设置时区
&& echo "${TIME_ZONE}" > /etc/timezone \
&& ln -sf /usr/share/zoneinfo/${TIME_ZONE} /etc/localtime \
COPY ./go-cqhttp /usr/bin/cqhttp
WORKDIR /data

ENTRYPOINT ["/usr/bin/cqhttp"]
