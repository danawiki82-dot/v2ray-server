FROM ubuntu:22.04

RUN apt-get update && apt-get install -y curl unzip

WORKDIR /tmp

RUN curl -L -o v2ray.zip https://github.com/v2fly/v2ray-core/releases/download/v5.13.0/v2ray-linux-64.zip && \
    unzip v2ray.zip && \
    mkdir -p /etc/v2ray && \
    mkdir -p /usr/local/bin && \
    mv v2ray /usr/local/bin/ && \
    mv v2ctl /usr/local/bin/ && \
    chmod +x /usr/local/bin/v2ray && \
    chmod +x /usr/local/bin/v2ctl

COPY config.json /etc/v2ray/config.json

EXPOSE 8080

CMD ["/usr/local/bin/v2ray", "-config", "/etc/v2ray/config.json"]
