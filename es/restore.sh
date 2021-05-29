#!/bin/bash
RES=$PWD/restore
es=172.18.0.1:9233
docker run -v $RES:/tmp --rm -ti elasticdump/elasticsearch-dump \
  --input=/tmp/es_collection_mapping.json \
  --output=http://$es/collection \
  --type=mapping
docker run -v $RES:/tmp --rm -ti elasticdump/elasticsearch-dump \
  --input=/tmp/es_collection.json \
  --output=http://$es/collection \
  --type=data
