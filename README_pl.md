<!--
To README zostało automatycznie wygenerowane przez <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Nie powinno być ono edytowane ręcznie.
-->

# Loki + Promtail dla YunoHost

[![Poziom integracji](https://apps.yunohost.org/badge/integration/loki)](https://ci-apps.yunohost.org/ci/apps/loki/)
![Status działania](https://apps.yunohost.org/badge/state/loki)
![Status utrzymania](https://apps.yunohost.org/badge/maintained/loki)

[![Zainstaluj Loki + Promtail z YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=loki)

*[Przeczytaj plik README w innym języku.](./ALL_README.md)*

> *Ta aplikacja pozwala na szybką i prostą instalację Loki + Promtail na serwerze YunoHost.*  
> *Jeżeli nie masz YunoHost zapoznaj się z [poradnikiem](https://yunohost.org/install) instalacji.*

## Przegląd

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


**Dostarczona wersja:** 3.0.0~ynh8
## Dokumentacja i zasoby

- Oficjalna strona aplikacji: <https://grafana.com/docs/loki/latest/>
- Oficjalna dokumentacja dla administratora: <https://grafana.com/docs/loki/latest/>
- Repozytorium z kodem źródłowym: <https://github.com/grafana/loki>
- Sklep YunoHost: <https://apps.yunohost.org/app/loki>
- Zgłaszanie błędów: <https://github.com/YunoHost-Apps/loki_ynh/issues>

## Informacje od twórców

Wyślij swój pull request do [gałęzi `testing`](https://github.com/YunoHost-Apps/loki_ynh/tree/testing).

Aby wypróbować gałąź `testing` postępuj zgodnie z instrukcjami:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/loki_ynh/tree/testing --debug
lub
sudo yunohost app upgrade loki -u https://github.com/YunoHost-Apps/loki_ynh/tree/testing --debug
```

**Więcej informacji o tworzeniu paczek aplikacji:** <https://yunohost.org/packaging_apps>
