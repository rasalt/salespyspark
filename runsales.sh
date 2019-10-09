gsutil cp totalcost.py gs://had1store/
gcloud dataproc jobs submit pyspark \
    --cluster had1 --region us-central1 \
    gs://had1store/totalcost.py \
    --jars=gs://hadoop-lib/bigquery/bigquery-connector-hadoop2-latest.jar
