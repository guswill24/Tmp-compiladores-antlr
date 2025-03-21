# Compiladores - Entorno Codespace con ANTLR 4.9.3

![Validación de entorno ANTLR](https://github.com/guswill24/Tmp-compiladores-antlr/actions/workflows/validate-setup.yml/badge.svg)


Este repositorio está configurado para que trabajes directamente con ANTLR4 en GitHub Codespaces sin necesidad de configuraciones manuales.

## ✅ Herramientas instaladas automáticamente

- Java (JDK)
- Python 3
- ANTLR 4.9.3
- Alias `antlr4` y `antlr4-parse`
- Runtime de ANTLR para Python

## 🔄 Verifica tu instalación

Abre la terminal en tu Codespace y ejecuta:

```bash
antlr4
```

## ⚠️ ¿No funciona el comando `antlr4`?
Abre una nueva terminal o ejecuta:

```bash
source ~/.bashrc
```


¡Claro! Aquí tienes una sección en **Markdown** que puedes agregar directamente al `README.md` de tu repositorio plantilla. Esta explicación es **clara, didáctica y orientada a estudiantes**, para que comprendan qué hace el workflow y por qué es útil.

---

### ✅ Validación automática del entorno con GitHub Actions

Este repositorio incluye un sistema de verificación automática que se ejecuta cada vez que haces un **push** o creas un **Pull Request**. Esta validación está pensada para asegurarnos de que **el entorno de ANTLR4 está correctamente instalado y funcionando**.

#### 🔍 ¿Qué valida exactamente?

1. **Java y Python3**: verifica que estén disponibles en el entorno.
2. **ANTLR 4.9.3**: descarga el archivo `.jar` y lo ejecuta para ver si funciona.
3. **Compilación de una gramática de prueba**: crea una gramática muy sencilla (`Mini.g4`) y la compila con ANTLR.

#### 🧪 ¿Por qué es útil?

Este proceso ayuda a:
- Confirmar que tu entorno Codespace está correctamente configurado.
- Detectar errores de configuración antes de empezar a programar.
- Asegurar que todos en el curso trabajan bajo las mismas condiciones.

#### 📋 ¿Dónde ver los resultados?

Cuando haces un commit o PR, ve a la pestaña **"Actions"** de tu repositorio. Allí verás algo como esto:

```
✔️ Verificar instalación y funcionamiento de ANTLR4 – passed
```

Si algo falla, verás una cruz roja ❌ y un mensaje de error indicando qué parte no está funcionando.

