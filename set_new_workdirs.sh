#! /usr/bin/env bash
set -a
source .env
set +a

MY_PATH="${LOCAL_TMP_PATH%/}"
DIRS=("dags" "logs" "pg-airflow" "scripts" "ssh")

for dir in "${DIRS[@]}"; do
    full_path="$MY_PATH/$dir"
    read -p "Voulez-vous recréer de zéro le dossier $full_path ? [y/N] " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        rm -rf "$full_path"
    fi
    mkdir -p "$full_path"
done
