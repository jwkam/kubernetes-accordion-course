helm install stable/prometheus-adapter --name prometheus-adapter --namespace monitoring --set prometheus.url=http://prometheus-server.monitoring.svc.cluster.local  --set prometheus.port=80
