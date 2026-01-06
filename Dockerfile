FROM ubuntu:22.04
RUN apt-get update && apt-get install -y curl
RUN bash <(curl -L https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh)
COPY config.json /etc/v2ray/config.json
EXPOSE 8080
CMD ["/usr/local/bin/v2ray", "-config", "/etc/v2ray/config.json"]

