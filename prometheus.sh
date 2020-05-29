helm upgrade prometheus stable/prometheus \
    --install \
    --namespace='monitoring' \
    --set kube-state-metrics.image.repository="mpawlak719/kube-state-metrics" \
    --set kube-state-metrics.image.pullPolicy="Always" \
    --set server.persistentVolume.storageClass="nfs-client" \
    --set alertmanager.persistentVolume.storageClass="nfs-client" \
    --set pushgateway.persistentVolume.storageClass="nfs-client" \
    --wait \
    --timeout="600s"
