# k8sInstall
Repo helps to install k8s

sudo sh install_docker.sh
sudo sh bootstrap_k8s.sh
#cni issue

sudo rm /etc/containerd/config.toml
sudo systemctl restart containerd

#list k8s version
apt list -a kubeadm

#remove k8s
 
kubeadm reset
sudo apt-get purge kubeadm kubectl kubelet kubernetes-cni kube*   
sudo apt-get autoremove  
sudo rm -rf ~/.kube
