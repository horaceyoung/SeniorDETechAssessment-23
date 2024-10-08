FROM apache/airflow:2.10.2

USER root

# Create necessary folders and set permissions
RUN mkdir -p /opt/airflow/data/input /opt/airflow/data/output/successful /opt/airflow/data/output/unsuccessful

# Copy the requirements.txt and install dependencies
COPY requirements.txt /requirements.txt
RUN pip install --no-cache-dir -r /requirements.txt

