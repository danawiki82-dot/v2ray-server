FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /tmp

RUN curl -L -o v2ray.zip https://github.com/v2fly/v2ray-core/releases/download/v5.13.0/v2ray-linux-64.zip && \
    unzip v2ray.zip && \
    install -m 755 v2ray /usr/local/bin/v2ray && \
    mkdir -p /etc/v2ray

COPY config.json /etc/v2ray/config.json

EXPOSE 8080

CMD ["v2ray", "run", "-config", "/etc/v2ray/config.json"]
