#!/bin/bash

echo "🔧 Configurando entorno para ANTLR..."

# Activar los alias desde el perfil global
if [ -f /etc/profile.d/antlr.sh ]; then
    source /etc/profile.d/antlr.sh
    echo "✅ Alias de ANTLR cargados desde /etc/profile.d/antlr.sh"
else
    echo "⚠️ No se encontró /etc/profile.d/antlr.sh. Verifica que el Dockerfile lo haya creado correctamente."
fi

antlr4 -version || echo "⚠️ ANTLR4 no está accesible aún."