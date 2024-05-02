<!--
NOTA: Este README foi creado automáticamente por <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
NON debe editarse manualmente.
-->

# Loki + Promtail para YunoHost

[![Nivel de integración](https://dash.yunohost.org/integration/loki.svg)](https://dash.yunohost.org/appci/app/loki) ![Estado de funcionamento](https://ci-apps.yunohost.org/ci/badges/loki.status.svg) ![Estado de mantemento](https://ci-apps.yunohost.org/ci/badges/loki.maintain.svg)

[![Instalar Loki + Promtail con YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=loki)

*[Le este README en outros idiomas.](./ALL_README.md)*

> *Este paquete permíteche instalar Loki + Promtail de xeito rápido e doado nun servidor YunoHost.*  
> *Se non usas YunoHost, le a [documentación](https://yunohost.org/install) para saber como instalalo.*

## Vista xeral

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


**Versión proporcionada:** 2.9.5~ynh1
## Documentación e recursos

- Web oficial da app: <https://grafana.com/docs/loki/latest/>
- Documentación oficial para admin: <https://grafana.com/docs/loki/latest/>
- Repositorio de orixe do código: <https://github.com/grafana/loki>
- Tenda YunoHost: <https://apps.yunohost.org/app/loki>
- Informar dun problema: <https://github.com/YunoHost-Apps/loki_ynh/issues>

## Info de desenvolvemento

Envía a túa colaboración á [rama `testing`](https://github.com/YunoHost-Apps/loki_ynh/tree/testing).

Para probar a rama `testing`, procede deste xeito:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/loki_ynh/tree/testing --debug
ou
sudo yunohost app upgrade loki -u https://github.com/YunoHost-Apps/loki_ynh/tree/testing --debug
```

**Máis info sobre o empaquetado da app:** <https://yunohost.org/packaging_apps>
