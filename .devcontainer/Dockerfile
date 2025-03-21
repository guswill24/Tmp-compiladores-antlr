FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Variables para versión de ANTLR
ENV ANTLR_VERSION=4.9.3
ENV ANTLR_JAR=/usr/local/lib/antlr/antlr-${ANTLR_VERSION}-complete.jar
ENV CLASSPATH=.:${ANTLR_JAR}

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
    curl -o ${ANTLR_JAR} https://www.antlr.org/download/antlr-${ANTLR_VERSION}-complete.jar && \
    echo "export CLASSPATH=.:${ANTLR_JAR}:\$CLASSPATH" >> /etc/profile.d/antlr.sh && \
    echo "alias antlr4='java -Xmx500M -cp ${ANTLR_JAR}:\$CLASSPATH org.antlr.v4.Tool'" >> /etc/profile.d/antlr.sh && \
    echo "alias grun='java -Xmx500M -cp ${ANTLR_JAR}:\$CLASSPATH org.antlr.v4.gui.TestRig'" >> /etc/profile.d/antlr.sh && \
    chmod +x /etc/profile.d/antlr.sh

# Cargar configuración ANTLR automáticamente en todos los shells interactivos
RUN echo 'source /etc/profile.d/antlr.sh' >> /etc/bash.bashrc
# Que el archivo postCreate.sh exista y tenga permisos:
RUN chmod +x /workspaces/Prueba_compiladores/.devcontainer/postCreate.sh || true
