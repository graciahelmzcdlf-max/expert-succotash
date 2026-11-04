FROM gogost/gost:latest

# Railway передает порт через переменную окружения PORT (по умолчанию 8080)
ENV PORT=8080
ENV PROXY_USER=user
ENV PROXY_PASS=password123

EXPOSE 8080

ENTRYPOINT ["sh", "-c", "gost -L http://${PROXY_USER}:${PROXY_PASS}@:8080 -L socks5://${PROXY_USER}:${PROXY_PASS}@:8080"]
