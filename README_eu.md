<!--
Ohart ongi: README hau automatikoki sortu da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>ri esker
EZ editatu eskuz.
-->

# Loki + Promtail YunoHost-erako

[![Integrazio maila](https://apps.yunohost.org/badge/integration/loki)](https://ci-apps.yunohost.org/ci/apps/loki/)
![Funtzionamendu egoera](https://apps.yunohost.org/badge/state/loki)
![Mantentze egoera](https://apps.yunohost.org/badge/maintained/loki)

[![Instalatu Loki + Promtail YunoHost-ekin](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=loki)

*[Irakurri README hau beste hizkuntzatan.](./ALL_README.md)*

> *Pakete honek Loki + Promtail YunoHost zerbitzari batean azkar eta zailtasunik gabe instalatzea ahalbidetzen dizu.*  
> *YunoHost ez baduzu, kontsultatu [gida](https://yunohost.org/install) nola instalatu ikasteko.*

## Aurreikuspena

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


**Paketatutako bertsioa:** 3.0.0~ynh6
## Dokumentazioa eta baliabideak

- Aplikazioaren webgune ofiziala: <https://grafana.com/docs/loki/latest/>
- Administratzaileen dokumentazio ofiziala: <https://grafana.com/docs/loki/latest/>
- Jatorrizko aplikazioaren kode-gordailua: <https://github.com/grafana/loki>
- YunoHost Denda: <https://apps.yunohost.org/app/loki>
- Eman errore baten berri: <https://github.com/YunoHost-Apps/loki_ynh/issues>

## Garatzaileentzako informazioa

Bidali `pull request`a [`testing` abarrera](https://github.com/YunoHost-Apps/loki_ynh/tree/testing).

`testing` abarra probatzeko, ondorengoa egin:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/loki_ynh/tree/testing --debug
edo
sudo yunohost app upgrade loki -u https://github.com/YunoHost-Apps/loki_ynh/tree/testing --debug
```

**Informazio gehiago aplikazioaren paketatzeari buruz:** <https://yunohost.org/packaging_apps>
