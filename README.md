<!--
N.B.: This README was automatically generated by <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
It shall NOT be edited by hand.
-->

# Loki + Promtail for YunoHost

[![Integration level](https://dash.yunohost.org/integration/loki.svg)](https://ci-apps.yunohost.org/ci/apps/loki/) ![Working status](https://ci-apps.yunohost.org/ci/badges/loki.status.svg) ![Maintenance status](https://ci-apps.yunohost.org/ci/badges/loki.maintain.svg)

[![Install Loki + Promtail with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=loki)

*[Read this README in other languages.](./ALL_README.md)*

> *This package allows you to install Loki + Promtail quickly and simply on a YunoHost server.*  
> *If you don't have YunoHost, please consult [the guide](https://yunohost.org/install) to learn how to install it.*

## Overview

Loki is a horizontally-scalable, highly-available, multi-tenant log aggregation system inspired by Prometheus. It is designed to be very cost effective and easy to operate. It does not index the contents of the logs, but rather a set of labels for each log stream.

Compared to other log aggregation systems, Loki:

- does not do full text indexing on logs. By storing compressed, unstructured logs and only indexing metadata, Loki is simpler to operate and cheaper to run.
- indexes and groups log streams using the same labels you’re already using with Prometheus, enabling you to seamlessly switch between metrics and logs using the same labels that you’re already using with Prometheus.
- is an especially good fit for storing Kubernetes Pod logs. Metadata such as Pod labels is automatically scraped and indexed.
- has native support in Grafana (needs Grafana v6.0).

A Loki-based logging stack consists of 3 components:
- Promtail (included in this package) is the agent, responsible for gathering logs and sending them to Loki.
- Loki is the main server, responsible for storing logs and processing queries.
- [Grafana](https://github.com/Yunohost-Apps/grafana_ynh) for querying and displaying the logs.


**Shipped version:** 3.0.0~ynh4
## Documentation and resources

- Official app website: <https://grafana.com/docs/loki/latest/>
- Official admin documentation: <https://grafana.com/docs/loki/latest/>
- Upstream app code repository: <https://github.com/grafana/loki>
- YunoHost Store: <https://apps.yunohost.org/app/loki>
- Report a bug: <https://github.com/YunoHost-Apps/loki_ynh/issues>

## Developer info

Please send your pull request to the [`testing` branch](https://github.com/YunoHost-Apps/loki_ynh/tree/testing).

To try the `testing` branch, please proceed like that:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/loki_ynh/tree/testing --debug
or
sudo yunohost app upgrade loki -u https://github.com/YunoHost-Apps/loki_ynh/tree/testing --debug
```

**More info regarding app packaging:** <https://yunohost.org/packaging_apps>
