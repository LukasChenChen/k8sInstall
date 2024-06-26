#!/bin/bash
# install dependencies for ubuntu
#author: chen
#require docker

apt install -y apt-transport-https curl

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add

echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" >> ~/kubernetes.list
mv ~/kubernetes.list /etc/apt/sources.list.d

apt update

apt-get install -y kubelet=1.24.0-00 kubeadm=1.24.0-00 kubectl=1.24.0-00 kubernetes-cni

swapoff -a

lsmod | grep br_netfilter

modprobe br_netfilter

sysctl net.bridge.bridge-nf-call-iptables=1

sysctl net.ipv4.ip_forward= 1
	
mkdir /etc/docker
cat <<EOF | sudo tee /etc/docker/daemon.json
{ "exec-opts": ["native.cgroupdriver=systemd"],
"log-driver": "json-file",
"log-opts":
{ "max-size": "100m" },
"storage-driver": "overlay2"
}
EOF

systemctl enable docker
systemctl daemon-reload
systemctl restart docker

ufw allow 6443
ufw allow 6443/tcp

rm /etc/containerd/config.toml
systemctl restart contained

-----------------------------------
#update 14.06.2024
apt install -y apt-transport-https curl

echo "deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.28/deb/ /" | sudo tee /etc/apt/sources.list.d/kubernetes.list

curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.28/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg

sudo apt-get update

apt-get install -y kubelet kubeadm kubectl

kubeadm init --pod-network-cidr=10.244.0.0/16

#see more https://kubernetes.io/blog/2023/08/15/pkgs-k8s-io-introduction/#how-to-migrate

swapoff -a

lsmod | grep br_netfilter

modprobe br_netfilter

sysctl net.bridge.bridge-nf-call-iptables=1

sysctl net.ipv4.ip_forward= 1
	
mkdir /etc/docker
cat <<EOF | sudo tee /etc/docker/daemon.json
{ "exec-opts": ["native.cgroupdriver=systemd"],
"log-driver": "json-file",
"log-opts":
{ "max-size": "100m" },
"storage-driver": "overlay2"
}
EOF

systemctl enable docker
systemctl daemon-reload
systemctl restart docker

ufw allow 6443
ufw allow 6443/tcp

rm /etc/containerd/config.toml
systemctl restart contained
