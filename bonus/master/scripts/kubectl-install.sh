#!/bin/bash

curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
mv ./kubectl /usr/local/bin/kubectl
mkdir ~/.kube/
cp -r /shared/confs/kubeconfig ~/.kube/config
cp -r ~/.kube /home/vagrant/
chown -R vagrant:vagrant /home/vagrant/.kube/