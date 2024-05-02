<!--
Nota bene: ce README est automatiquement généré par https://github.com/YunoHost/apps/tree/master/tools/readme_generator
Il ne doit pas être modifié à la main.
-->

# Loki + Promtail pour YunoHost

[![Niveau d'intégration ](https://dash.yunohost.org/integration/loki.svg)](https://dash.yunohost.org/appci/app/loki) ![Status du fonctionnement](https://ci-apps.yunohost.org/ci/badges/loki.status.svg) ![Statut demaintenance](https://ci-apps.yunohost.org/ci/badges/loki.maintain.svg)

[![Installer Loki + Promtail avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=loki)

*[Lire le README dans d'autres langues.](./ALL_README.md)*

> *Ce package vous permet d’installer Loki + Promtail rapidement et simplement sur un serveur YunoHost.*  
> *Si vous n’avez pas YunoHost, consultez [ce guide](https://yunohost.org/install) pour savoir comment l’installer et en profiter.*

## Vue d'ensemble

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

**Version incluse :** 2.9.5~ynh1
## Documentations et ressources

- Site officiel de l’app : <https://grafana.com/docs/loki/latest/>
- Documentation officielle de l'admin <https://grafana.com/docs/loki/latest/>
- Dépôt de code officiel de l’app : <https://github.com/grafana/loki>
- YunoHost Store : <https://apps.yunohost.org/app/loki>
- Signaler un bug : <https://github.com/YunoHost-Apps/loki_ynh/issues>

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche branch](https://github.com/YunoHost-Apps/loki_ynh/tree/testing),

Pour essayer la branche `testing`, procédez comme suit :

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/loki_ynh/tree/testing --debug
or
sudo yunohost app upgrade loki -u https://github.com/YunoHost-Apps/loki_ynh/tree/testing --debug
```

**Plus d'infos sur le packaging d'applications :** <https://yunohost.org/packaging_apps>
