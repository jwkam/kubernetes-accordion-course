helm install stable/prometheus --name prometheus --namespace monitoring --set server.persistentVolume.enabled=false --set alertmanager.persistentVolume.enabled=false --set alertmanager.service.type=NodePort --set server.service.type=NodePort

export SERVER_PORT=$(kubectl get --namespace monitoring -o jsonpath="{.spec.ports[0].nodePort}" services prometheus-server)
export ALERTMANAGER_PORT=$(kubectl get --namespace monitoring -o jsonpath="{.spec.ports[0].nodePort}" services prometheus-alertmanager)

echo PrometheusServer_NodePort=$SERVER_PORT
echo alertmanager_NodePort=$ALERTMANAGER_PORT
