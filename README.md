# A1 — Estructurados (Trabajo local con Git)

Objetivo: configurar un proyecto local **reproducible** y generar un **indicador simple** desde un tabulado estructurado, usando **Python (Spyder)**, **R (RStudio)** o **Stata**.  
Este repositorio es un **template** para GitHub Classroom.

---

## 1) Estructura obligatoria

~~~
code/                 # scripts (.py / .R / .do)
data/
  raw/                # datos originales
  intermediate/       # (opcional) datos intermedios
outputs/
  figures/
  tables/
~~~

> Usa SIEMPRE **rutas relativas** (no rutas absolutas tipo `C:\Users\...`).

---

## 2) Clonar el repo (Git/GitHub)

### Opción simple (recomendada): GitHub Desktop
1. Instala Git y GitHub Desktop.
2. **Clone repository** → pega la URL → elige carpeta local.
3. Abre esa carpeta en tu IDE (Spyder o RStudio).
4. Al terminar: **Commit** → **Push** desde GitHub Desktop.

### Opción terminal (HTTPS + PAT)
1. Configura tu identidad (una vez):
   ~~~bash
   git config --global user.name "Tu Nombre"
   git config --global user.email "tu_email@dominio.com"
   ~~~
2. Clona el repo:
   ~~~bash
   git clone https://github.com/ORG/REPO.git
   cd REPO
   ~~~
   > Cuando pida “password”, pega tu **Personal Access Token (PAT)** (no tu contraseña).

### Opción terminal (SSH)
1. Genera y registra tu clave SSH en GitHub.
2. Clona:
   ~~~bash
   git clone git@github.com:ORG/REPO.git
   ~~~

---

## 3) Elige tu lenguaje

### A) Python + Spyder (Anaconda)
> Spyder no maneja Git; clona con GitHub Desktop o terminal y luego abre la carpeta en Spyder.

**Crear entorno e instalar paquetes (una vez):**
~~~bash
conda create -n mlia python=3.10 -y
conda activate mlia
conda install pandas matplotlib pyarrow -y
~~~

**Ejecutar demo:**
1) Abre **Spyder** (Anaconda).  
2) Abre y corre `code/python_test_run.py`.

**Salidas esperadas:**
- `outputs/tables/indicator_clean.parquet`
- `outputs/figures/fig_indicator.png`

---

### B) R + RStudio
**Proyecto desde Git (recomendado):**  
RStudio → `File > New Project > Version Control > Git` → pega URL → **Create Project**.  
(RStudio integra Git: pestaña **Git** para *Pull/Commit/Push*.)

**Instalar paquetes (una vez):**
~~~r
install.packages(c("arrow","ggplot2"))
~~~

**Ejecutar demo:** corre `code/r_test_run.R`.

**Salidas esperadas:**
- `outputs/tables/indicator_clean.parquet`
- `outputs/figures/fig_indicator.png`

---

### C) Stata
Clona el repo (Desktop/terminal) o descarga ZIP.  
En **Stata**, ubicado en la carpeta del repo, ejecuta:
~~~
do code/00_master.do
~~~

**Salidas esperadas:**
- `outputs/tables/indicator_clean.csv`
- `outputs/figures/fig_indicator.png`

---

## 4) Commit & Push (publicar tu trabajo)

~~~bash
git add .
git commit -m "setup + demo ok"
git push origin main
~~~

---

## 5) Entregables (actividad)

1. `outputs/tables/indicator_clean.parquet` (o `.csv` si usas Stata)  
2. `outputs/figures/fig_indicator.png`  
3. `DATA_CARD.md` completo (fuente/URL, licencia, fecha, diccionario, supuestos)

> La actividad oficial llegará por Classroom. Este template asegura que tu entorno quede funcionando hoy.

---

## 6) Solución de problemas (rápido)

- **“Password authentication is not supported”** → Estás usando contraseña: crea y usa un **PAT** (o SSH).  
- **Windows ↔ saltos de línea (CRLF/LF)**:
  ~~~bash
  git config --global core.autocrlf true   # Windows
  git config --global core.autocrlf input  # macOS/Linux
  ~~~
- **Archivos grandes (>100MB)**: evita subirlos; si es inevitable, usa Git LFS (no requerido hoy).  
- **Rutas**: no uses absolutas; mantén todo dentro del repo con rutas **relativas**.

---
