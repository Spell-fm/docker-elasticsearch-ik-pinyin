ARG ES_VERSION=8.4.1

FROM docker.elastic.co/elasticsearch/elasticsearch:${ES_VERSION}
LABEL org.opencontainers.image.authors="Phoenix Gao (phoenix@spell.fm)"

ARG PLUGIN_VERSION=8.4.1

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch \
    analysis-icu

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch \
    https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v${PLUGIN_VERSION}/elasticsearch-analysis-ik-${PLUGIN_VERSION}.zip

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch \
    https://github.com/medcl/elasticsearch-analysis-pinyin/releases/download/v${PLUGIN_VERSION}/elasticsearch-analysis-pinyin-${PLUGIN_VERSION}.zip
