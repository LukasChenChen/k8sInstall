# k8sInstall
## Repo helps to install k8s

## For all nodes <br />
sudo sh config-nodes.sh  <br />
sudo sh docker.sh  <br />

## For master node <br />
sudo sh k8s.sh <br />
sudo autocomplete.sh <br />

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


# reference 
https://hackmd.io/@sohailanjum97/H1EOq0rV_
