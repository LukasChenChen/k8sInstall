sudo kubeadm init --control-plane-endpoint 158.125.103.228 --apiserver-advertise-address=192.168.1.161 --pod-network-cidr=10.244.0.0/16

	
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config



##join cluster not working
change /etc/docker/daemon.json

## flannel not working, dont reboot

sudo mkdir -p /run/systemd/resolve
sudo ln -s /etc/resolv.conf /run/systemd/resolve/resolv.conf

##kubelet 
/etc/systemd/system/kubelet.service.d/10-kubeadm.conf

Environment="KUBELET_CGROUP_ARGS=--cgroup-driver=systemd"


allow ufw 6443
allow ufw 6443/tcp

allow ufw 2379/tcp
allow ufw 2380/tcp
allow ufw 4001/tcp
443

journalctl -u kubelet

sudo kubeadm init --control-plane-endpoint 34.142.95.15 --pod-network-cidr=10.244.0.0/16 --apiserver-advertise-address=34.142.95.15

sudo kubeadm init --upload-certs --control-plane-endpoint 34.105.187.221 --apiserver-advertise-address=34.105.187.221 --pod-network-cidr=10.244.0.0/16

sudo kubeadm init --apiserver-advertise-address=35.246.5.30--pod-network-cidr=10.244.0.0/16


sudo kubeadm init --pod-network-cidr=10.244.0.0/16 --apiserver-advertise-address=10.8.0.2
