#!/bin/bash
VER=7.10.2

wget https://hub.fastgit.org/medcl/elasticsearch-analysis-ik/releases/download/v$VER/elasticsearch-analysis-ik-$VER.zip -O es/ik-$VER.zip

git clone https://hub.fastgit.org/zzhmark/ccf-db.git
git clone https://hub.fastgit.org/zzhmark/ccf-db-backend.git

docker-compose up -d


