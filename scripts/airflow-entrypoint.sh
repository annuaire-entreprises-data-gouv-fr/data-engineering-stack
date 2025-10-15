#!/usr/bin/env bash
airflow db migrate
airflow scheduler &
airflow triggerer &
airflow dag-processor &
airflow api-server
