FROM fluent/fluentd:v1.13
USER root
RUN ["gem", "install", "fluent-plugin-elasticsearch"]
RUN ["gem", "install", "elasticsearch-xpack:7.10.0"]
RUN ["gem", "install", "elasticsearch-api:7.10.0"]
RUN ["gem", "install", "fluent-plugin-rewrite-tag-filter"]
RUN ["gem", "install", "fluent-plugin-record-reformer"]
RUN ["gem", "install", "fluent-plugin-filter-docker_metadata"]
RUN ["gem", "install", "fluent-plugin-detect-exceptions"]
USER root
