helm install stable/grafana --name grafana --namespace monitoring --set service.type=NodePort  --set adminPassword=admin

export GRAFANA_PORT=$(kubectl get --namespace monitoring -o jsonpath="{.spec.ports[0].nodePort}" services grafana)

echo Grafana_NodePort=$SERVER_PORT
