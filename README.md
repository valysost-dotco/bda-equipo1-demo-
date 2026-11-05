# Práctica de MapReduce en Apache Hadoop 3.3.6

Repositorio con los scripts de automatización y ejemplos prácticos de MapReduce ejecutados sobre un contenedor Debian en Docker.

## Requisitos Previos
- Docker Desktop
- Imagen de Debian con OpenJDK 21 y Hadoop 3.3.6

## Estructura del Proyecto
- `scripts/run_standalone.sh`: Ejecuta la prueba MapReduce (Grep/WordCount) en modo Standalone.
- `scripts/run_pseudodistributed.sh`: Prepara HDFS, sube archivos de entrada y ejecuta MapReduce sobre el cluster Pseudo-Distribuido.
- `data/sample.txt`: Archivo de prueba de datos de entrada.

## Ejecución
1. Modo Standalone:
   ```bash
   bash scripts/run_standalone.sh
