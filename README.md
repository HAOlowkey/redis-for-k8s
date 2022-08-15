# redis-for-k8s
使用helm安装redis 目前仅支持standalone模式

To install the `my-release`:

```
helm repo add myrepo https://haolowkey.github.io/helm-chart
helm install my-releasemyrepo/redis
```

To uninstall/delete the `my-release`:

```bash
$ helm uninstall my-release
```

## Parameters

### Global parameters

| Name                      | Description                                     | Value |
| ------------------------- | ----------------------------------------------- | ----- |
| `architecture`            | Redis architecture support value "standalone"   | `"standalone"`  |


### Common parameters

| Name                     | Description                                                                 | Value           |
| ------------------------ | --------------------------------------------------------------------------- | --------------- |
| `service.type`           | service type                                                                | `"clusterIP"`   |