#!/bin/bash
echo "=== Configurando e Iniciando HDFS en Modo Pseudo-Distribuido ==="

# Copiar configuraciones
cp config/core-site.xml $HADOOP_HOME/etc/hadoop/
cp config/hdfs-site.xml $HADOOP_HOME/etc/hadoop/
cat config/hadoop-env.sh >> $HADOOP_HOME/etc/hadoop/hadoop-env.sh

# Iniciar servicio SSH
service ssh start

# Formatear NameNode
hdfs namenode -format -force

# Levantar demonios HDFS
$HADOOP_HOME/sbin/start-dfs.sh

# Verificar demonios activos
jps
