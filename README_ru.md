<!--
Важно: этот README был автоматически сгенерирован <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Он НЕ ДОЛЖЕН редактироваться вручную.
-->

# Loki + Promtail для YunoHost

[![Уровень интеграции](https://dash.yunohost.org/integration/loki.svg)](https://ci-apps.yunohost.org/ci/apps/loki/) ![Состояние работы](https://ci-apps.yunohost.org/ci/badges/loki.status.svg) ![Состояние сопровождения](https://ci-apps.yunohost.org/ci/badges/loki.maintain.svg)

[![Установите Loki + Promtail с YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=loki)

*[Прочтите этот README на других языках.](./ALL_README.md)*

> *Этот пакет позволяет Вам установить Loki + Promtail быстро и просто на YunoHost-сервер.*  
> *Если у Вас нет YunoHost, пожалуйста, посмотрите [инструкцию](https://yunohost.org/install), чтобы узнать, как установить его.*

## Обзор

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


**Поставляемая версия:** 3.0.0~ynh5
## Документация и ресурсы

- Официальный веб-сайт приложения: <https://grafana.com/docs/loki/latest/>
- Официальная документация администратора: <https://grafana.com/docs/loki/latest/>
- Репозиторий кода главной ветки приложения: <https://github.com/grafana/loki>
- Магазин YunoHost: <https://apps.yunohost.org/app/loki>
- Сообщите об ошибке: <https://github.com/YunoHost-Apps/loki_ynh/issues>

## Информация для разработчиков

Пришлите Ваш запрос на слияние в [ветку `testing`](https://github.com/YunoHost-Apps/loki_ynh/tree/testing).

Чтобы попробовать ветку `testing`, пожалуйста, сделайте что-то вроде этого:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/loki_ynh/tree/testing --debug
или
sudo yunohost app upgrade loki -u https://github.com/YunoHost-Apps/loki_ynh/tree/testing --debug
```

**Больше информации о пакетировании приложений:** <https://yunohost.org/packaging_apps>
