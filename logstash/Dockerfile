# https://github.com/elastic/logstash-docker
FROM docker.elastic.co/logstash/logstash:6.0.0

# Add your logstash plugins setup here
RUN logstash-plugin install logstash-filter-csv
RUN logstash-plugin install logstash-filter-multiline
