helm install stable/prometheus-operator --namespace monitoring --name prometheus-operator --set prometheus.prometheusSpec.serviceMonitorSelectorNilUsesHelmValues=false
