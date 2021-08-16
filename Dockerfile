FROM fluent/fluentd:v1.12
USER root
RUN ["gem", "install", "fluent-plugin-elasticsearch:5.0.5"]
RUN ["gem", "install", "elasticsearch-xpack:7.13.3"]
RUN ["gem", "install", "elasticsearch-api:7.13.3"]
RUN ["gem", "install", "fluent-plugin-rewrite-tag-filter"]
RUN ["gem", "install", "fluent-plugin-record-reformer"]
RUN ["gem", "install", "fluent-plugin-filter-docker_metadata"]
RUN ["gem", "install", "fluent-plugin-detect-exceptions"]
USER root
