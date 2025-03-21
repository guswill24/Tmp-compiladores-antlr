FROM mcr.microsoft.com/devcontainers/base:ubuntu

RUN apt-get update && apt-get install -y \
    default-jdk \
    python3 \
    python3-pip \
    curl \
    unzip \
    nano

RUN pip3 install antlr4-python3-runtime

# Descargar ANTLR
RUN mkdir -p /usr/local/lib/antlr && \
    curl -o /usr/local/lib/antlr/antlr-4.9.3-complete.jar https://www.antlr.org/download/antlr-4.9.3-complete.jar
