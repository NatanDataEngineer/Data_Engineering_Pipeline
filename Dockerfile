FROM apache/airflow:2.10.4-python3.12.5

COPY requirements.txt /opt/airflow/

USER root
RUN winget update && winget install Python.Python.3.12 GnuWin64.gcc

USER airflow

RUN pip install --no-cache-dir -r /opt/airflow/requirements.txt