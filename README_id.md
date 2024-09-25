<!--
N.B.: README ini dibuat secara otomatis oleh <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Ini TIDAK boleh diedit dengan tangan.
-->

# Loki + Promtail untuk YunoHost

[![Tingkat integrasi](https://dash.yunohost.org/integration/loki.svg)](https://ci-apps.yunohost.org/ci/apps/loki/) ![Status kerja](https://ci-apps.yunohost.org/ci/badges/loki.status.svg) ![Status pemeliharaan](https://ci-apps.yunohost.org/ci/badges/loki.maintain.svg)

[![Pasang Loki + Promtail dengan YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=loki)

*[Baca README ini dengan bahasa yang lain.](./ALL_README.md)*

> *Paket ini memperbolehkan Anda untuk memasang Loki + Promtail secara cepat dan mudah pada server YunoHost.*  
> *Bila Anda tidak mempunyai YunoHost, silakan berkonsultasi dengan [panduan](https://yunohost.org/install) untuk mempelajari bagaimana untuk memasangnya.*

## Ringkasan

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


**Versi terkirim:** 3.0.0~ynh3
## Dokumentasi dan sumber daya

- Website aplikasi resmi: <https://grafana.com/docs/loki/latest/>
- Dokumentasi admin resmi: <https://grafana.com/docs/loki/latest/>
- Depot kode aplikasi hulu: <https://github.com/grafana/loki>
- Gudang YunoHost: <https://apps.yunohost.org/app/loki>
- Laporkan bug: <https://github.com/YunoHost-Apps/loki_ynh/issues>

## Info developer

Silakan kirim pull request ke [`testing` branch](https://github.com/YunoHost-Apps/loki_ynh/tree/testing).

Untuk mencoba branch `testing`, silakan dilanjutkan seperti:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/loki_ynh/tree/testing --debug
atau
sudo yunohost app upgrade loki -u https://github.com/YunoHost-Apps/loki_ynh/tree/testing --debug
```

**Info lebih lanjut mengenai pemaketan aplikasi:** <https://yunohost.org/packaging_apps>
