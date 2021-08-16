FROM fluent/fluentd:edge-debian
USER root

RUN ["gem", "install", "elasticsearch", "--version", "7.13.3"]
RUN ["gem", "install", "elasticsearch-xpack", "--version", "7.13.3"]
RUN ["gem", "install", "elasticsearch-api", "--version", "7.13.3"]

RUN ["gem", "install", "fluent-plugin-elasticsearch", "--version", "5.0.5"]
RUN ["gem", "install", "fluent-plugin-rewrite-tag-filter"]
RUN ["gem", "install", "fluent-plugin-record-reformer"]
RUN ["gem", "install", "fluent-plugin-filter-docker_metadata"]
RUN ["gem", "install", "fluent-plugin-detect-exceptions"]
USER root
