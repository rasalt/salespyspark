gsutil mb gs://had1store
gcloud dataproc clusters create had2 \
    --initialization-actions 'gs://dataproc-initialization-actions/datalab/datalab.sh','gs://dataproc-initialization-actions/connectors/connectors.sh' \
    --metadata 'gcs-connector-version=1.9.11' \
    --metadata 'bigquery-connector-version=0.13.11'
