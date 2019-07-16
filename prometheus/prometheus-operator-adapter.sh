helm install stable/prometheus-adapter --name prometheus-adapter --namespace monitoring --set prometheus.url=http://prometheus-operator-prometheus.monitoring.svc.cluster.local 
