FROM elasticsearch:5.6.8-alpine

RUN ./bin/elasticsearch-plugin install --batch analysis-icu \
  && ./bin/elasticsearch-plugin install --batch analysis-phonetic

ENV discovery.type="single-node"
ENV http.port=9250

EXPOSE 9250/tcp
