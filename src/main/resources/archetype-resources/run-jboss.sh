#!/bin/sh
###############################################################################
# Démarrage de l'application avec le serveur d'application *JBoss EAP 7.1*.
# Le répertoire de déploiement de JBoss est mappé via un volume
###############################################################################

Pwd=`pwd`
docker run -it -p 8080:8080 \
           -v $Pwd/target:/home/user/jboss-eap-7.1/standalone/deployments:rw codenvy/jboss-eap7 \
           /home/user/jboss-eap-7.1/bin/standalone.sh -c standalone.xml -b 0.0.0.0
