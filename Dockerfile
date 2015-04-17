FROM dockerfile/elasticsearch

ADD config/elasticsearch.yml /elasticsearch/config/elasticsearch.yml

RUN /elasticsearch/bin/plugin --install elasticsearch/elasticsearch-analysis-kuromoji/2.5.0
RUN /elasticsearch/bin/plugin --install elasticsearch/marvel/latest
RUN /elasticsearch/bin/plugin --install mobz/elasticsearch-head

