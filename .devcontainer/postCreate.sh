#!/bin/bash

echo "Configurando alias para ANTLR..."

echo 'export ANTLR_JAR=/usr/local/lib/antlr/antlr-4.9.3-complete.jar' >> ~/.bashrc
echo 'export CLASSPATH=".:$ANTLR_JAR:$CLASSPATH"' >> ~/.bashrc
echo 'alias antlr4="java -jar $ANTLR_JAR"' >> ~/.bashrc
echo 'alias antlr4-parse="java -cp $ANTLR_JAR org.antlr.v4.gui.TestRig"' >> ~/.bashrc

source ~/.bashrc

echo "✅ ANTLR4 configurado correctamente"
