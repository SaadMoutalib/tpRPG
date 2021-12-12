#!/bin/sh
mvn clean package && docker build -t ma.emsi.saad/tpRPGSaad .
docker rm -f tpRPGSaad || true && docker run -d -p 9080:9080 -p 9443:9443 --name tpRPGSaad ma.emsi.saad/tpRPGSaad