#!/bin/bash
# =========================================================
# Script para configurar HDFS en modo pseudo-distribuido
# Universidad Politecnica de Queretaro - Big Data
# =========================================================

echo "=== Configurando Hadoop en modo pseudo-distribuido ==="

# Copiar archivos de configuracion al directorio de Hadoop
echo "Copiando archivos de configuracion..."
cp config/core-site.xml $HADOOP_HOME/etc/hadoop/
cp config/hdfs-site.xml $HADOOP_HOME/etc/hadoop/
cp config/hadoop-env.sh $HADOOP_HOME/etc/hadoop/

# Formatear el NameNode (solo la primera vez)
echo "Formateando NameNode..."
$HADOOP_HOME/bin/hdfs namenode -format -force

# Iniciar servicios HDFS (NameNode y DataNode)
echo "Iniciando NameNode y DataNode..."
$HADOOP_HOME/sbin/start-dfs.sh

# Verificar procesos activos
echo ""
echo "=== Procesos activos (jps) ==="
jps

echo ""
echo "Cluster listo."
echo "Accede a la Web UI del NameNode en: http://localhost:9870"
