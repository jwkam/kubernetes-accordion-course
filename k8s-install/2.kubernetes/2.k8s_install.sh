yum install -y kubelet kubeadm kubectl --disableexcludes=kubernetes
systemctl enable --now kubelet