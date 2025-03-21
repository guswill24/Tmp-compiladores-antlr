# 🧠 Compiladores - Entorno Codespace con ANTLR 4.9.3

![Validación de entorno ANTLR](https://github.com/usuario/nombreRepositorio/actions/workflows/validate-setup.yml/badge.svg)

Este repositorio está configurado para que trabajes directamente con **ANTLR4 en GitHub Codespaces**, sin necesidad de configuraciones manuales.

---

## 🚀 ¿Qué incluye este entorno?

Estas herramientas se instalan automáticamente al crear tu Codespace:

- ✅ Java (JDK)
- ✅ Python 3
- ✅ ANTLR 4.9.3 (`.jar`)
- ✅ Runtime de ANTLR para Python
- ✅ Alias útiles:
  - `antlr4`: para compilar gramáticas
  - `antlr4-parse`: para analizar y visualizar

---

## 🔄 ¿Cómo verifico que todo está funcionando?

1. Abre la terminal en tu Codespace.
2. Escribe:

```bash
antlr4
```

Deberías ver algo como:

```bash
ANTLR Parser Generator  Version 4.9.3
```

---

## ⚠️ ¿No funciona el comando `antlr4`?

Esto puede pasar si los alias aún no se cargaron en la terminal. Solución rápida:

```bash
source ~/.bashrc
```

Si el problema persiste, reconstruye el contenedor desde el menú `Dev Containers: Rebuild Container`.

---

## 🤖 Validación automática del entorno con GitHub Actions

Este repositorio incluye un **workflow de GitHub Actions** que verifica automáticamente que el entorno esté correctamente configurado.

### 🔍 ¿Qué valida exactamente?

1. **Java y Python3** estén instalados.
2. **ANTLR 4.9.3** se descargue y funcione.
3. **Una gramática de prueba (`Mini.g4`) se compile** correctamente.

### 🧪 ¿Por qué es útil?

- Asegura que tu entorno esté listo para trabajar.
- Detecta errores de configuración antes de que empieces.
- Unifica el entorno entre todos los estudiantes.

### 📋 ¿Dónde ver los resultados?

Ve a la pestaña **Actions** del repositorio. Verás algo así:

```
✔️ Verificar instalación y funcionamiento de ANTLR4 – passed
```

Si algo falla, verás una ❌ con un mensaje indicando qué parte no funcionó.

---

# 🧪 Pruebas con ANTLR4: análisis léxico y sintáctico

A continuación, te guiamos paso a paso para probar una gramática personalizada (`MiGramatica.g4`).

📁 **Ubicación recomendada:** `Ejercicios/Ejercicio1`

---

## 1️⃣ Generar el analizador a partir de la gramática

```bash
antlr4 MiGramatica.g4
```

📘 **¿Qué hace este comando?**  
Genera los archivos `MiGramaticaLexer.py`, `MiGramaticaParser.py`, y otros necesarios para análisis léxico y sintáctico.

---

## 2️⃣ Ver análisis léxico (tokens)

```bash
echo "x = 5 + 3 * 2;" | antlr4-parse MiGramatica.g4 programa -tokens
```

🔍 **Explicación:**

- Muestra los **tokens** identificados por el analizador léxico.

✅ **Ejemplo de salida esperada:**

```
[@0,0:0='x',<ID>,1:0]
[@1,2:2='=',<'='>,1:2]
[@2,4:4='5',<INT>,1:4]
...
```

---

## 3️⃣ Ver el árbol sintáctico en interfaz gráfica

```bash
echo "x = 5 + 3 * 2;" | antlr4-parse MiGramatica.g4 programa -gui
```

🧠 **¿Qué hace esto?**

- Muestra el **árbol de derivación sintáctico** de forma visual.

💡 **Útil para comprender** la jerarquía de expresiones y estructuras del lenguaje.

---

## 4️⃣ Ver el árbol sintáctico en formato texto

```bash
echo "x = y + z * w / 2 - 1;" | antlr4-parse MiGramatica.g4 programa -tree
```

📘 **Explicación:**

- Muestra la estructura sintáctica **en consola** sin abrir una ventana gráfica.

✅ **Ejemplo de salida esperada:**

```
(prog
  (asignacion x =
    (expresion
      (expresion
        (termino y) +
        (termino 
          (factor z) * 
          (factor w) / 
          (factor 2)
        )
      ) -
      (termino 1)
    )
  ;)
)
```

🧠 **¿Qué se observa?**

- Precedencia de operadores correcta.
- Árbol jerárquico según la gramática.

---

## 📦 Estructura sugerida del repositorio

```
📁 .devcontainer/
   ├─ Dockerfile
   ├─ devcontainer.json
   └─ postCreate.sh
📁 Ejercicios/
   └─ Ejercicio1/
       ├─ MiGramatica.g4
       └─ input.txt
```
