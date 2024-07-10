> kubeadm token create --print-join-command<br /> 

> journalctl -u kubelet

# kubeadm init running into issue - [ERROR CRI]: container runtime is not running
> sudo rm /etc/containerd/config.toml <br /> 
> sudo systemctl restart containerd   <br /> 


# Master not ready
> create folder /etc/cni/net.d <br /> 
> copy /etc/cni/net.d/10-flannel.conflist to current failed node <br /> 
> systemctl restart kubelet <br /> 


# Install flannel
> kubectl create -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel-rbac.yml