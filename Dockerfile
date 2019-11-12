FROM sebp/elk:683

ADD ./02-beats-input.conf /etc/logstash/conf.d/02-beats-input.conf

# ENV LS_OPTS=--config.reload.automatic

WORKDIR ${LOGSTASH_HOME}
RUN gosu logstash bin/logstash-plugin install logstash-filter-multiline
