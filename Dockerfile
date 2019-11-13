FROM sebp/elk@sha256:6763f8c63cd7c858b527b831e5f67e803652cc229118aeaf23b32549f7f14032

ADD ./02-beats-input.conf /etc/logstash/conf.d/02-beats-input.conf

# ENV LS_OPTS=--config.reload.automatic

WORKDIR ${LOGSTASH_HOME}
RUN gosu logstash bin/logstash-plugin install logstash-filter-multiline
