FROM ubuntu:latest

# Instalação dos pacotes
RUN apt update && apt install -y \
    net-tools \
    iputils-ping \
    bind9 \
    nano


CMD tail -f /dev/null
