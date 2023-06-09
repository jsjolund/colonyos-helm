# Installation
Edit `values.yaml` and type:

```console
./install.sh
```

# Configuration
| Syntax    | Description |
| ---       | ----------- |
| Header    | Title       |
| Paragraph | Text        |

# Monitoring
Use this data source in Grafana
http://prometheus-service.colonies:9090

# High-availability
| Colonies Server Replicas | Majority | Failure Tolerance |
|:------------------------:|:--------:|:-----------------:|
|            1             |    1     |         0         |
|            2             |    2     |         0         |
|            3             |    2     |         1         |
|            4             |    3     |         1         |
|            5             |    3     |         2         |
|            6             |    4     |         2         |
|            7             |    4     |         3         |
|            8             |    5     |         3         |
|            9             |    5     |         4         |
