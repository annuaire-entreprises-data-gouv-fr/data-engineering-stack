# Airflow pour l'Annuaire des Entreprises

Ce repository a pour objectif de mettre en place rapidement une infrastructure Airflow permettant à chacun de tester son DAG avant mise en production.

L'infrastructure actuelle est basée sur du SequentialExecutor (le scheduler, le webserver et worker sont hébergés sur le même container).

## Installation

1. Cloner le dépôt de code
```
git clone git@github.com:etalab/data-engineering-stack.git
cd data-engineering-stack
```

4. Remplir les variables dans .env
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

Après quelques secondes se connecter à http://localhost:8080 (si le port par défaut est utilisé) avec l'identifiant et l'utilisateur définis en variables dans `.env`.
