FROM fluent/fluentd:v1.14.6-debian-1.0
USER root
RUN ["gem", "install", "fluent-plugin-grafana-loki"]
RUN ["gem", "install", "fluent-plugin-rewrite-tag-filter"]
RUN ["gem", "install", "fluent-plugin-record-reformer"]
RUN ["gem", "install", "fluent-plugin-filter-docker_metadata"]
RUN ["gem", "install", "fluent-plugin-detect-exceptions"]
USER root
