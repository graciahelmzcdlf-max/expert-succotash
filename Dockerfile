FROM ghcr.io/shadowsocks/ssserver-rust:latest

ENV SERVER_ADDR="0.0.0.0:8080"
ENV PASSWORD="degers153"
ENV METHOD="chacha20-ietf-poly1305"

EXPOSE 8080

CMD ssserver -s $SERVER_ADDR -m $METHOD -k $PASSWORD -u
