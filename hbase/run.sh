#!/bin/bash

/opt/hbase-2.2.3/bin/start-hbase.sh
/opt/hbase-2.2.3/bin/hbase-daemon.sh start rest
tail -f /opt/hbase-2.2.3/logs/*
