#!/bin/sh
###############################################################################
# Démarrage de l'application avec le serveur d'application *Payara*.
# Le répertoire de déploiement de Payara est mappé via un volume
###############################################################################

Pwd=`pwd`
docker run -p 8080:8080 \
           -v $Pwd/target:/opt/payara/deployments payara/micro \
           java -jar /opt/payara/payara-micro.jar --deploymentDir /opt/payara/deployments
