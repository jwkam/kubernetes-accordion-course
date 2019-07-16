helm del --purge prometheus-operator
kubectl delete customresourcedefinitions alertmanagers.monitoring.coreos.com podmonitors.monitoring.coreos.com  prometheuses.monitoring.coreos.com  prometheusrules.monitoring.coreos.com  servicemonitors.monitoring.coreos.com

