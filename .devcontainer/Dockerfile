FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Instalación de dependencias
RUN apt-get update && apt-get install -y \
    default-jdk \
    python3 \
    python3-pip \
    curl \
    unzip \
    nano \
    wget \
    git

# Instala el runtime de ANTLR para Python 3
RUN pip3 install antlr4-python3-runtime

# Descarga ANTLR y configura alias globalmente
RUN mkdir -p /usr/local/lib/antlr && \
    curl -o /usr/local/lib/antlr/antlr-4.9.3-complete.jar https://www.antlr.org/download/antlr-4.9.3-complete.jar && \
    echo 'export CLASSPATH=".:/usr/local/lib/antlr/antlr-4.9.3-complete.jar:$CLASSPATH"' >> /etc/profile.d/antlr.sh && \
    echo 'alias antlr4="java -Xmx500M -cp \"/usr/local/lib/antlr/antlr-4.9.3-complete.jar:$CLASSPATH\" org.antlr.v4.Tool"' >> /etc/profile.d/antlr.sh && \
    echo 'alias grun="java -Xmx500M -cp \"/usr/local/lib/antlr/antlr-4.9.3-complete.jar:$CLASSPATH\" org.antlr.v4.gui.TestRig"' >> /etc/profile.d/antlr.sh && \
    chmod +x /etc/profile.d/antlr.sh

# Cargar configuración ANTLR para los shells interactivos
RUN echo 'source /etc/profile.d/antlr.sh' >> /root/.bashrc && \
    echo 'source /etc/profile.d/antlr.sh' >> /home/vscode/.bashrc && \
    chown vscode:vscode /home/vscode/.bashrc
