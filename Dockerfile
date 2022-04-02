FROM docker.elastic.co/elasticsearch/elasticsearch:8.1.2
LABEL org.opencontainers.image.authors="Phoenix Gao (phoenix@spell.fm)"

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch \
    https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v8.1.2/elasticsearch-analysis-ik-8.1.2.zip

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch \
    https://github.com/medcl/elasticsearch-analysis-pinyin/releases/download/v8.1.2/elasticsearch-analysis-pinyin-8.1.2.zip
