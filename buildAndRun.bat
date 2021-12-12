@echo off
call mvn clean package
call docker build -t ma.emsi.saad/tpRPGSaad .
call docker rm -f tpRPGSaad
call docker run -d -p 9080:9080 -p 9443:9443 --name tpRPGSaad ma.emsi.saad/tpRPGSaad