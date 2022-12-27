Loki is a horizontally-scalable, highly-available, multi-tenant log aggregation system inspired by Prometheus. It is designed to be very cost effective and easy to operate. It does not index the contents of the logs, but rather a set of labels for each log stream.

Compared to other log aggregation systems, Loki:

 - does not do full text indexing on logs. By storing compressed, unstructured logs and only indexing metadata, Loki is simpler to operate and cheaper to run.
 - indexes and groups log streams using the same labels you’re already using with Prometheus, enabling you to seamlessly switch between metrics and logs using the same labels that you’re already using with Prometheus.
 - is an especially good fit for storing Kubernetes Pod logs. Metadata such as Pod labels is automatically scraped and indexed.
 - has native support in Grafana (needs Grafana v6.0).

A Loki-based logging stack consists of 3 components:
 - [promtail](https://github.com/Yunohost-Apps/promtail_ynh) is the agent, responsible for gathering logs and sending them to Loki.
 - [loki](https://github.com/Yunohost-Apps/loki_ynh) is the main server, responsible for storing logs and processing queries.
 - [Grafana](https://github.com/Yunohost-Apps/grafana_ynh) for querying and displaying the logs.

