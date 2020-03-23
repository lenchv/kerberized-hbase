FROM lenchv/hbase:2.2.3

ENV DEBIAN_FRONTEND=noninteractive

COPY ./hbase/* $HBASE_CONF_DIR/
COPY ./zoo/* $ZOO_HOME/conf/

RUN mkdir -p /hbase/staging && chmod 711 /hbase/staging

COPY hbase.sh /hbase.sh
RUN chmod +x /hbase.sh

CMD ["/hbase.sh"]