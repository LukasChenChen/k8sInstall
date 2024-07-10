> kubeadm token create --print-join-command

> journalctl -u kubelet

# kubeadm init running into issue - [ERROR CRI]: container runtime is not running
> sudo rm /etc/containerd/config.toml
> sudo systemctl restart containerd


# Master not ready
> create folder /etc/cni/net.d
> copy /etc/cni/net.d/10-flannel.conflist to current failed node
> systemctl restart kubelet


# Install flannel
> kubectl create -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel-rbac.yml