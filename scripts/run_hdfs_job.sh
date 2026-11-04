#!/bin/bash
# =========================================================
# Script para ejecutar un job de ejemplo en HDFS (wordcount)
# Universidad Politecnica de Queretaro - Big Data
# =========================================================

echo "=== Ejecutando job de ejemplo en HDFS ==="

# Crear directorio de entrada en HDFS
echo "Creando directorio de entrada en HDFS..."
hdfs dfs -mkdir -p /user/$USER/input

# Crear archivo de prueba y subirlo a HDFS
echo "Hola mundo Hadoop desde UPQ" > /tmp/prueba.txt
echo "Big Data modo pseudo-distribuido" >> /tmp/prueba.txt
hdfs dfs -put -f /tmp/prueba.txt /user/$USER/input/

# Listar contenido del directorio en HDFS
echo ""
echo "=== Archivos en HDFS ==="
hdfs dfs -ls /user/$USER/input/

# Limpiar carpeta de salida si existe
hdfs dfs -rm -r -f /user/$USER/output

# Ejecutar wordcount de ejemplo
echo ""
echo "=== Ejecutando wordcount ==="
hadoop jar $HADOOP_HOME/share/hadoop/mapreduce/hadoop-mapreduce-examples-*.jar \
    wordcount /user/$USER/input /user/$USER/output

# Mostrar resultados
echo ""
echo "=== Resultados del wordcount ==="
hdfs dfs -cat /user/$USER/output/part-r-00000
