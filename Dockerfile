FROM gogost/gost:latest

ENV PROXY_USER=user
ENV PROXY_PASS=password123

EXPOSE 8080 8081

ENTRYPOINT ["sh", "-c", "gost -L http://${PROXY_USER}:${PROXY_PASS}@:8080 -L socks5://${PROXY_USER}:${PROXY_PASS}@:8081"]
