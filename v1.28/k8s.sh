#!/bin/bash
# install dependencies for ubuntu
#author: chen
#require docker
#date 14.06.2024
swapoff -a

apt install -y apt-transport-https curl

echo "deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.28/deb/ /" | sudo tee /etc/apt/sources.list.d/kubernetes.list

curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.28/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg

sudo apt-get update

apt-get install -y kubelet kubeadm kubectl kubernetes-cni



