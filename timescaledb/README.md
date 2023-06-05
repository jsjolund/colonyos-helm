# Introduction
This helm chart installs a TimescaleDB server with a Colonies backup executor sidecar. 
The backup executor automatically saves backups in a S3 bucket.

# Get logs from backup executor
```console
kubectl logs timescaledb-statefulset-0 -c backup -n timescaledb  
```

# Check backups in S3
```console
kubectl exec --stdin -it -n timescaledb -c backup timescaledb-statefulset-0 -- bash  
mc alias set myminio https://s3.colonyos.io x9xMQu79H1eYAPtj1gRb HQHfte8N0H7YrhjL7v7ez7M7TPmOXTQc87zXyxVn
mc ls myminio/backup/backups --insecure
```
