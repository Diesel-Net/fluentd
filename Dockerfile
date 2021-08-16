FROM fluent/fluentd:v1.12
USER root

RUN ["gem", "install", "elasticsearch-xpack", "--version", "7.10.1"]
RUN ["gem", "install", "elasticsearch-api", "--version", "7.10.1"]

RUN ["gem", "install", "fluent-plugin-elasticsearch"]
RUN ["gem", "install", "fluent-plugin-rewrite-tag-filter"]
RUN ["gem", "install", "fluent-plugin-record-reformer"]
RUN ["gem", "install", "fluent-plugin-filter-docker_metadata"]
RUN ["gem", "install", "fluent-plugin-detect-exceptions"]
USER root
