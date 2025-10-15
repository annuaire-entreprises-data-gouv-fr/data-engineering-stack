FROM apache/airflow:slim-3.1.0-python3.12

ARG AIRFLOW_HOME=/opt/airflow

USER root

RUN apt-get update -y
RUN apt-get install git lftp zip wget p7zip-full -y

RUN chown -R "airflow:root" /opt/airflow/
ADD ./scripts/airflow-entrypoint.sh /entrypoint.sh

USER airflow

RUN pip install --upgrade pip
RUN pip install --trusted-host pypi.org --trusted-host files.pythonhosted.org boto3
ADD requirements.txt /requirements.txt
RUN pip install -r /requirements.txt
