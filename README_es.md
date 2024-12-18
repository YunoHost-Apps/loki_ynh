<!--
Este archivo README esta generado automaticamente<https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
No se debe editar a mano.
-->

# Loki + Promtail para Yunohost

[![Nivel de integración](https://apps.yunohost.org/badge/integration/loki)](https://ci-apps.yunohost.org/ci/apps/loki/)
![Estado funcional](https://apps.yunohost.org/badge/state/loki)
![Estado En Mantención](https://apps.yunohost.org/badge/maintained/loki)

[![Instalar Loki + Promtail con Yunhost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=loki)

*[Leer este README en otros idiomas.](./ALL_README.md)*

> *Este paquete le permite instalarLoki + Promtail rapidamente y simplement en un servidor YunoHost.*  
> *Si no tiene YunoHost, visita [the guide](https://yunohost.org/install) para aprender como instalarla.*

## Descripción general

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


**Versión actual:** 3.0.0~ynh7
## Documentaciones y recursos

- Sitio web oficial: <https://grafana.com/docs/loki/latest/>
- Documentación administrador oficial: <https://grafana.com/docs/loki/latest/>
- Repositorio del código fuente oficial de la aplicación : <https://github.com/grafana/loki>
- Catálogo YunoHost: <https://apps.yunohost.org/app/loki>
- Reportar un error: <https://github.com/YunoHost-Apps/loki_ynh/issues>

## Información para desarrolladores

Por favor enviar sus correcciones a la [rama `testing`](https://github.com/YunoHost-Apps/loki_ynh/tree/testing).

Para probar la rama `testing`, sigue asÍ:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/loki_ynh/tree/testing --debug
o
sudo yunohost app upgrade loki -u https://github.com/YunoHost-Apps/loki_ynh/tree/testing --debug
```

**Mas informaciones sobre el empaquetado de aplicaciones:** <https://yunohost.org/packaging_apps>
