FROM elasticsearch:5.6.8-alpine

RUN ./bin/elasticsearch-plugin install --batch analysis-icu \
  && ./bin/elasticsearch-plugin install --batch analysis-phonetic

ENV discovery.type="single-node"
