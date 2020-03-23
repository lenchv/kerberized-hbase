FROM zookeeper

RUN DEBIAN_FRONTEND=noninteractive && \
	apt-get update && \
	apt-get install -y --no-install-recommends krb5-user

COPY ./confs/* $ZOO_CONF_DIR/
