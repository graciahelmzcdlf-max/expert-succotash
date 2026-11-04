FROM gogost/gost:latest

COPY gost.json /etc/gost/config.json

EXPOSE 8080 8081

ENTRYPOINT ["gost", "-C", "/etc/gost/config.json"]
