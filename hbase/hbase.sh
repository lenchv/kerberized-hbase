#!/bin/bash

/hadoop.sh
$ZOO_HOME/bin/zkServer.sh start

printf root | kinit root@KERBEROS.SERVER
adduser hbase
groupadd hadoop
usermod -a -G hadoop hbase
hdfs dfs -mkdir /hbase
hdfs dfs -chown -R hbase:hadoop /hbase
hdfs dfs -chown -R hbase:hadoop /tmp
kdestroy

/opt/hbase-2.2.3/bin/start-hbase.sh
/opt/hbase-2.2.3/bin/hbase-daemon.sh start rest

tail -f /opt/hbase-2.2.3/logs/*.log
