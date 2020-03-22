FROM lenchv/hbase:2.2.3

HEALTHCHECK CMD curl -f http://localhost:8080/ || exit 1

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]