FROM dockerfile/elasticsearch

RUN /elasticsearch/bin/plugin --install elasticsearch/elasticsearch-analysis-kuromoji/2.3.0
ADD elasticsearch.yml /etc/elasticsearch/ 

CMD /elasticsearch/bin/elasticsearch -Des.config=/etc/elasticsearch/elasticsearch.yml

