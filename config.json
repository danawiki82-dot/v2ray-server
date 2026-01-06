{
  "inbounds": [
    {
      "port": 8080,
      "protocol": "vmess",
      "settings": {
        "clients": [
          {
            "id": "PASTE-YOUR-UUID-HERE",
            "alterId": 0
          }
        ]
      },
      "streamSettings": {
        "network": "ws",
        "wsSettings": {
          "path": "/v2ray"
        }
      }
    }
  ],
  "outbounds": [
    {
      "protocol": "freedom"
    }
  ]
}
```
3. **Replace `PASTE-YOUR-UUID-HERE` with your actual UUID** (the one you copied above)
4. Save as: `config.json`

**File 2: Dockerfile**
1. Open Notepad again
2. Copy and paste this:
```
FROM ubuntu:22.04
RUN apt-get update && apt-get install -y curl
RUN bash <(curl -L https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh)
COPY config.json /etc/v2ray/config.json
EXPOSE 8080
CMD ["/usr/local/bin/v2ray", "-config", "/etc/v2ray/config.json"]
