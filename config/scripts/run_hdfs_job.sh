#!/bin/bash
echo "=== Ejecutando MapReduce sobre HDFS ==="

# Crear directorios en HDFS
hdfs dfs -mkdir -p /user/root
hdfs dfs -mkdir -p input

# Subir datos a HDFS
hdfs dfs -put $HADOOP_HOME/etc/hadoop/*.xml input

# Ejecutar Job MapReduce
hadoop jar $HADOOP_HOME/share/hadoop/mapreduce/hadoop-mapreduce-examples-3.3.6.jar grep input output 'allowed[a-z]*'

# Mostrar resultados desde HDFS
hdfs dfs -cat output/*
