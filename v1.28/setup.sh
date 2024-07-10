kubeadm init --pod-network-cidr=10.244.0.0/16

#see more https://kubernetes.io/blog/2023/08/15/pkgs-k8s-io-introduction/#how-to-migrate
# https://hbayraktar.medium.com/how-to-install-kubernetes-cluster-on-ubuntu-22-04-step-by-step-guide-7dbf7e8f5f99


mkdir -p $HOME/.kube
cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
chown $(id -u):$(id -g) $HOME/.kube/config
