FROM docker.elastic.co/elasticsearch/elasticsearch:8.1.0
MAINTAINER Phoenix Gao "phoenix@spell.fm"

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch \
    https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v8.1.0/elasticsearch-analysis-ik-8.1.0.zip

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch \
    https://github.com/medcl/elasticsearch-analysis-pinyin/releases/download/v8.1.0/elasticsearch-analysis-pinyin-8.1.0.zip
