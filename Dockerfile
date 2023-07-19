FROM ubuntu:latest

# Instalação dos pacotes
RUN apt update && apt install -y \
    net-tools \
    iputils-ping \
    nano 

CMD tail -f /dev/null
