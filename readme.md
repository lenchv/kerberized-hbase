# Kerberized Hbase

Before running the cluster change "volodymyr.local" to your hostname (hostname -f) in the `docker-compose.yml`.

To have an outside access to the cluster you should install kerberos client:

```bash
sudo apt-get install krb-user
```

Then configure `/etc/krb5.conf` as `kerberos/krb5.conf` from this repository. You can simply replace an existed one.

After that run the cluster:

```bash
docker-compose up -d
```

To check if kerberos server works execute:

```bash
printf hbase | kinit hbase@KERBEROS.SERVER
klist
```

After hbase service is healthy

```bash
docker-compose ps
```

you may check if hbase rest api works:

```bash
curl --negotiate -u : http://$(hostname -f)/version/cluster
```

To troubleshoot you can check the log files inside the container:

```bash
docker-compose exec hbase bash

# hbase logs
cd $HBASE_HOME/logs

# hadoop logs
cd $HADOOP_HOME/logs
```

## License

This project is under MIT License
