FROM dockerfile/elasticsearch

ADD config/elasticsearch.yml /elasticsearch/config/elasticsearch.yml

RUN /elasticsearch/bin/plugin --install elasticsearch/elasticsearch-analysis-kuromoji/2.3.0
RUN /elasticsearch/bin/plugin --install elasticsearch/marvel/latest
RUN /elasticsearch/bin/plugin --install mobz/elasticsearch-head

CMD /elasticsearch/bin/elasticsearch -Des.config=/etc/elasticsearch/elasticsearch.yml

