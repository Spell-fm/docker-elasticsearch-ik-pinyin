ARG ES_VERSION=8.1.2

FROM docker.elastic.co/elasticsearch/elasticsearch:${ES_VERSION}
LABEL org.opencontainers.image.authors="Phoenix Gao (phoenix@spell.fm)"

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch \
    https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v${ES_VERSION}/elasticsearch-analysis-ik-${ES_VERSION}.zip

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch \
    https://github.com/medcl/elasticsearch-analysis-pinyin/releases/download/v${ES_VERSION}/elasticsearch-analysis-pinyin-${ES_VERSION}.zip
