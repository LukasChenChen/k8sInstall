# k8sInstall
> Repo helps to install k8s

sudo sh install_docker.sh  <br />
sudo sh bootstrap_k8s.sh  <br />
# cni issue

sudo rm /etc/containerd/config.toml  <br />
sudo systemctl restart containerd  <br />

# list k8s version
apt list -a kubeadm

# remove k8s
 
kubeadm reset  <br />
sudo apt-get purge kubeadm kubectl kubelet kubernetes-cni kube*     <br />
sudo apt-get autoremove    <br />
sudo rm -rf ~/.kube  <br />
