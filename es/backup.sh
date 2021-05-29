#!/bin/bash
BAK=$PWD/backup
es=172.18.0.1:9233
docker run -v $BAK:/tmp --rm -ti elasticdump/elasticsearch-dump \
  --output=/tmp/es_collection_mapping.json \
  --input=http://$es/collection \
  --type=mapping
docker run -v $BAK:/tmp --rm -ti elasticdump/elasticsearch-dump \
  --output=/tmp/es_collection.json \
  --input=http://$es/collection \
  --type=data
