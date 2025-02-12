<!--
注意：此 README 由 <https://github.com/YunoHost/apps/tree/master/tools/readme_generator> 自动生成
请勿手动编辑。
-->

# YunoHost 上的 Loki + Promtail

[![集成程度](https://apps.yunohost.org/badge/integration/loki)](https://ci-apps.yunohost.org/ci/apps/loki/)
![工作状态](https://apps.yunohost.org/badge/state/loki)
![维护状态](https://apps.yunohost.org/badge/maintained/loki)

[![使用 YunoHost 安装 Loki + Promtail](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=loki)

*[阅读此 README 的其它语言版本。](./ALL_README.md)*

> *通过此软件包，您可以在 YunoHost 服务器上快速、简单地安装 Loki + Promtail。*  
> *如果您还没有 YunoHost，请参阅[指南](https://yunohost.org/install)了解如何安装它。*

## 概况

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


**分发版本：** 3.0.0~ynh8
## 文档与资源

- 官方应用网站： <https://grafana.com/docs/loki/latest/>
- 官方管理文档： <https://grafana.com/docs/loki/latest/>
- 上游应用代码库： <https://github.com/grafana/loki>
- YunoHost 商店： <https://apps.yunohost.org/app/loki>
- 报告 bug： <https://github.com/YunoHost-Apps/loki_ynh/issues>

## 开发者信息

请向 [`testing` 分支](https://github.com/YunoHost-Apps/loki_ynh/tree/testing) 发送拉取请求。

如要尝试 `testing` 分支，请这样操作：

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/loki_ynh/tree/testing --debug
或
sudo yunohost app upgrade loki -u https://github.com/YunoHost-Apps/loki_ynh/tree/testing --debug
```

**有关应用打包的更多信息：** <https://yunohost.org/packaging_apps>
