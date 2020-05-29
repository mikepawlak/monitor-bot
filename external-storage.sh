 helm upgrade external-storage stable/nfs-client-provisioner \
  --namespace='monitoring' \
  --set nfs.server=192.168.86.155 \
  --set nfs.path=/home/pi/volume \
  --set image.repository=quay.io/external_storage/nfs-client-provisioner-arm \
  --install \
  --wait \
