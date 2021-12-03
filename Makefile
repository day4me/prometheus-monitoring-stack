HOSTNAME=$(shell echo $HOSTNAME)

LOKI_LB_IP=$(shell echo $LOKI_LB_IP)

all:
	sed "s,HOSTNAME,$HOSTNAME,g; s,LOKI_LB_IP,$LOKI_LB_IP,g" ./config/prom-conf.yaml
	docker-compose up -d