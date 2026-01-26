# Airflow pour l'Annuaire des Entreprises

Ce repository a pour objectif de mettre en place rapidement une infrastructure Airflow permettant à chacun de tester son DAG avant mise en production.

L'infrastructure actuelle est basée sur du SequentialExecutor (le scheduler, le webserver et worker sont hébergés sur le même container).

## Installation

1. Cloner le dépôt de code
```
git clone git@github.com:etalab/data-engineering-stack.git
cd data-engineering-stack
```

2. Remplir les variables dans .env
```bash
cat .envExample > .envtest
nano .env
```

3. Créer les dossiers locaux nécessaires à Airflow
```bash
./set_new_workdirs.sh
```

# Lancer Airflow

```bash
docker-compose up --build -d
```

## Commandes Elasticsearch Utiles

### Lister les indices:
```bash
curl -u http://localhost:9200/_cat/indices?v
```

### Vérifier l'état du status:
```bash
curl -u http://localhost:9200/_cluster/health?pretty
```

### Supprimer un index:
```bash
curl -u -X DELETE http://localhost:9200/your-index-name
```

### Voir le mapping d'un index:
```bash
curl -u http://localhost:9200/your-index-name/_mapping?pretty
```

### Lister les aliases:
```bash
curl -u http://localhost:9200/_cat/aliases?v
```

### Chercher tous les documents d'un index:
```bash
curl -u http://localhost:9200/your-index-name/_search?pretty
```
