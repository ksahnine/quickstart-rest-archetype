# Archetype Maven générant une application JavaEE 7 de type web service REST (JAX-RS).

Ce dépôt contient le code source d'un archetype Maven générant une application de type API de services REST (Java EE 7 / JAX-RS) ainsi que des scripts de démarrage via les serveurs d'application Java EE Dockerisés suivants :
- Payara micro
- JBoss EAP 7.1

## Mode opératoire d'installation de l'archetype :

```
git clone https://github.com/ksahnine/quickstart-rest-archetype.git
cd quickstart-rest-archetype
mvn install
```

## Génération d'une application :

### Mode opératoire de génération

```
mvn archetype:generate -B \
	  -DarchetypeGroupId=fr.inovia-conseil \
	  -DarchetypeArtifactId=quickstart-rest-archetype \
	  -DarchetypeVersion=1.0-SNAPSHOT \
	  -DgroupId=com.demo -DartifactId=dummy -DinteractiveMode=false
```

### Construction

```
cd dummy
mvn clean package
```

## Lancement de l'application avec Payara (profil micro) :

`sh run-payara.sh`

## Lancement de l'application avec JBoss EAP 7.1 :

`sh run-jboss.sh`

PS : sous Ubuntu, le montage du répertoire de déploiement via un volume Docker en mode read/write ne donne pas les droits en écriture dont a besoin JBoss (j'en ignore la cause pour l'instant).

`-v $Pwd/target:/home/user/jboss-eap-7.1/standalone/deployments:rw`

Contournement : `chmod o+w target`

## Exemple d'appel du service

- réponse au format JSON

```
curl -s -H "Accept: application/json" http://localhost:8080/dummy/api/echo/Hello
```

- réponse au format XML

```
curl -s -H "Accept: application/xml" http://localhost:8080/dummy/api/echo/Hello
```

## Construction d'une image Docker de l'application :

TODO
