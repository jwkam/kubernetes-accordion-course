helm install stable/prometheus --name prometheus --namespace monitoring --set server.persistentVolume.enabled=false --set alertmanager.persistentVolume.enabled=false --set alertmanager.service.type=NodePort --set server.service.type=NodePort
kubectl get --namespace monitoring -o jsonpath="{.spec.ports[0].nodePort}" services prometheus-server
kubectl get --namespace monitoring -o jsonpath="{.spec.ports[0].nodePort}" services prometheus-alertmanager
