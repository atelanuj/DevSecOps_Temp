# Initial setup
sudo mkdir -p /project
cd /project

# Minikube Installation
sudo curl -LO https://github.com/kubernetes/minikube/releases/latest/download/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube && rm minikube-linux-amd64
minikube config set driver docker
minikube delete
minikube start --driver=docker
alias k="minikube kubectl --"
k get nodes

# helm installation
sudo curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
sudo chmod 777 get_helm.sh
./get_helm.sh
helm