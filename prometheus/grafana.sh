helm install stable/grafana --name grafana --namespace monitoring --set service.type=NodePort  --set adminPassword=admin
kubectl get --namespace monitoring -o jsonpath="{.spec.ports[0].nodePort}" services grafana
