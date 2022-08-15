# redis-for-k8s
使用helm安装redis 目前仅支持standalone模式

To install the `my-release`:

```
helm repo add redisrepo https://haolowkey.github.io/helm-redis
helm install my-release redisrepo/redis
```

To uninstall/delete the `my-release`:

```bash
$ helm uninstall my-release
```

## Parameters

### Common parameters

| Name                      | Description                                     | Value |
| ------------------------- | ----------------------------------------------- | ----- |
| `architecture`            | Redis architecture (`standalone`)   | `"standalone"`  |

### Redis common parameters

| Name                       | Description                                                                                                                                                                         | Value                 |
| -------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------- |
| `image.registry`           | Redis image registry                                                                                                                                                                | `docker.io`           |
| `image.repository`         | Redis image repository                                                                                                                                                              | `haolowkey/redis`       |
| `image.tag`                | Redis image tag (immutable tags are recommended)                                                                                                                                    | `5.0.14` |
| `image.pullPolicy`         | MySQL image pull policy                                                                                                                                                             | `IfNotPresent`        |
| `image.pullSecrets`        | Specify docker-registry secret names as an array                                                                                                                                    | `[]`                  |
| `auth.password`     | Redis Password user                                                                                                                                                              | `""`          |