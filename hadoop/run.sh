#!/bin/bash

$HADOOP_PREFIX/etc/hadoop/hadoop-env.sh
$HADOOP_PREFIX/bin/hdfs --config $HADOOP_CONF_DIR namenode -format
$HADOOP_PREFIX/sbin/hadoop-daemon.sh --config $HADOOP_CONF_DIR start namenode
$HADOOP_PREFIX/sbin/hadoop-daemon.sh --config $HADOOP_CONF_DIR start datanode
$HADOOP_PREFIX/sbin/start-yarn.sh
$HADOOP_PREFIX/sbin/mr-jobhistory-daemon.sh start historyserver

tail -F $HADOOP_HOME/logs/*.log
