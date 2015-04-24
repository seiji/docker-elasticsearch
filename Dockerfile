FROM dockerfile/elasticsearch

ADD config/elasticsearch.yml /elasticsearch/config/elasticsearch.yml
ADD config/stopword.txt /elasticsearch/config/stopword.txt
ADD config/synonym.txt /elasticsearch/config/synonym.txt
ADD config/userdict_ja.txt /elasticsearch/config/userdict_ja.txt

RUN /elasticsearch/bin/plugin --install elasticsearch/elasticsearch-analysis-kuromoji/2.5.0
RUN /elasticsearch/bin/plugin --install elasticsearch/marvel/latest
RUN /elasticsearch/bin/plugin --install mobz/elasticsearch-head
RUN /elasticsearch/bin/plugin --install polyfractal/elasticsearch-inquisitor

